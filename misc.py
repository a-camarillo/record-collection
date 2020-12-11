'''
This will be a file for miscellaneous functions I will write
as I see fit.
'''
class TimeValueError(Exception):
    '''Exception raised if illegal time value is passed'''
    def __init__(self,time_value):
        

def minutes_to_millseconds(time_string):
    '''
    This function will pass in a string time in the format mm:ss and convert
    this to an integer millseconds
    '''
    minutes, seconds = time_string.split(':')
    if int(minutes) > 59 || int(seconds) > 59:
        raise  
