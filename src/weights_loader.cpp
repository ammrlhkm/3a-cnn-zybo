#include "weights_loader.h"

// Define the global variables here (not in the header)
float CONV1_W[3][3][3][64];
float CONV2_W[3][3][64][32];
float CONV3_W[3][3][32][20];
float LOCAL3_W[180][10];
float CONV1_B[64];
float CONV2_B[32];
float CONV3_B[20];
float LOCAL3_B[10];

void load_data(istream& f, int total_elements, float* array_ptr) {
    string token;
    int count = 0;
    
    while (count < total_elements && (f >> token)) {
        // Skip tokens that are just brackets or whitespace
        if (token.empty() || token.find_first_not_of("[]() \t\n\r") == string::npos) {
            continue;
        }
        
        // Remove any remaining brackets from the token
        token.erase(remove(token.begin(), token.end(), '['), token.end());
        token.erase(remove(token.begin(), token.end(), ']'), token.end());
        
        if (token.empty()) {
            continue;
        }
        
        try {
            float val_float = stof(token);
            array_ptr[count] = val_float;
            count++;
        } catch (const exception& e) {
            cerr << "ERROR: Invalid number encountered: '" << token << "' at index " << count << endl;
        }
    }
    
    if (count < total_elements) {
        cerr << "WARNING: Only loaded " << count << " out of " << total_elements << " elements" << endl;
    }
}

void load_cnn_weights(const string& filename) {
    ifstream file(filename);
    if (!file.is_open()) {
        cerr << "Error opening file: " << filename << endl;
        return;
    }

    // Read entire file content
    string content((istreambuf_iterator<char>(file)), istreambuf_iterator<char>());
    file.close();
    
    // Split by "tensor_name:"
    size_t pos = 0;
    while ((pos = content.find("tensor_name:", pos)) != string::npos) {
        // Extract tensor name (first line after "tensor_name:")
        size_t name_start = pos + 12; // length of "tensor_name:"
        size_t name_end = content.find('\n', name_start);
        string tensor_name = content.substr(name_start, name_end - name_start);
        
        // Trim whitespace from tensor name
        tensor_name.erase(0, tensor_name.find_first_not_of(" \t\n\r\f\v"));
        tensor_name.erase(tensor_name.find_last_not_of(" \t\n\r\f\v") + 1);
        
        // Find the data section - look for LAST ] before next tensor_name or end of file
        size_t data_start = content.find('[', name_end);
        size_t next_tensor = content.find("tensor_name:", pos + 1);
        size_t search_end = (next_tensor != string::npos) ? next_tensor : content.length();
        
        // Find the LAST ']' before the next tensor
        size_t data_end = content.rfind(']', search_end);
        
        if (data_start != string::npos && data_end != string::npos && data_end > data_start) {
            // Extract all text between first [ and last ]
            string data_section = content.substr(data_start + 1, data_end - data_start - 1);
            
            // Create a stringstream and extract numbers using load_data
            stringstream ss(data_section);
            
            // Map tensor name to appropriate array and load
            if (tensor_name == "conv1/weights") {
                load_data(ss, 3 * 3 * 3 * 64, (float*)CONV1_W);
            } else if (tensor_name == "conv2/weights") {
                load_data(ss, 3 * 3 * 64 * 32, (float*)CONV2_W);
            } else if (tensor_name == "conv3/weights") {
                load_data(ss, 3 * 3 * 32 * 20, (float*)CONV3_W);
            } else if (tensor_name == "local3/weights") {
                load_data(ss, 180 * 10, (float*)LOCAL3_W);
            } else if (tensor_name == "conv1/biases") {
                load_data(ss, 64, (float*)CONV1_B);
            } else if (tensor_name == "conv2/biases") {
                load_data(ss, 32, (float*)CONV2_B);
            } else if (tensor_name == "conv3/biases") {
                load_data(ss, 20, (float*)CONV3_B);
            } else if (tensor_name == "local3/biases") {
                load_data(ss, 10, (float*)LOCAL3_B);
            }
            
            pos = data_end + 1; // Move past the last ']'
        } else {
            pos = name_end + 1;
        }
    }
}