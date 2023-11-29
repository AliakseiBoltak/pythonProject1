*** Settings ***
Library          OperatingSystem

*** Variables ***
${output_directiory} =    Outputs
${directory} =    first_dir
${file} =   first_file.txt

*** Keywords ***
Create Some Base Dir
    create directory    ${OUTPUT_DIRECTIORY}
    should exist    ${OUTPUT_DIRECTIORY}

Create first directory
    ${directory_path} =    Join Path    ${OUTPUT_DIRECTIORY}    ${directory}
    create directory    ${directory_path}
    should exist        ${directory_path}

Create first file
    ${file_path} =   Join Path    ${OUTPUT_DIRECTIORY}  ${directory}    ${file}
    Create file     ${file_path}    This is my file!
    should exist    ${file_path}

Delete File
    ${file_path} =   Join Path    ${OUTPUT_DIRECTIORY}  ${directory}    ${file}
    remove file    ${file_path}
    should not exist    ${file_path}