import json
from os import path
'''
This file will have functions related to working with files and data structures
'''


def extract_consecutive_elements(element_list:list,num_elements:int):
    '''
    This function will extract a consecutive number of elements from a list and return the extracted list

        Attributes: 
            element_list -- a list from which elements should be extracted from
            num_elements -- an integer representing number of consecutive elements to extract
        Returns:
            segmented_list -- the list broken down into segmented list of lists
    '''
    segmented_list = []
    
    for i in range(0,len(element_list),num_elements):
        
        segmented_list.append(element_list[i:i+num_elements])
        
        if (len(element_list) - i) < num_elements: #trivial check for elements between last step and end of list
            segmented_list.append(element_list[i:len(element_list)])

    return segmented_list

def text_to_list(filepath):
    '''
    This function will read in a text file and put the contents in a list

        Attributes:
            filepath -- the filepath for the text file to be read in
        Returns:
            file_list -- the list containing the elements of the text file
    '''
    with open(filepath,'r') as f:
        file_list = [i.rstrip('\n') for i in f]
    return file_list

def dict_to_json(dictionary:dict,filepath):
    '''
    This function will pass in a dict and store the dict to a json file
     
        Attributes:
            dictionary -- the dict to be passed into the function
        Returns:
            None
    '''
    if path.exists(filepath):
        with open(filepath,'a') as f:
             json.dump(dictionary,f)
    else:
        with open(filepath,'w') as f:
             json.dump(dictionary,f)
    
    return 
    