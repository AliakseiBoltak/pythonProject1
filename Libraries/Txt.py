
def  read_txt_file(filename):
    with open(filename, 'r') as f:
        lines = f.readlines()
    return lines