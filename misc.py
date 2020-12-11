'''
This will be a file for miscellaneous functions I will write
as I see fit.
'''
class TimeValueError(Exception):
    '''Exception raised if illegal time value is passed
    
       Attributes:
            time_value -- time value which caused the error
            message -- explanation of the TimeValueError
    '''
    def __init__(self,time_value,message):
        self.time_value = time_value
        super().__init__(message)


def minutes_to_milliseconds(time_string:str):
    '''
    This function will pass in a string time in the format mm:ss and convert
    this to an integer milliseconds

        Attributes:
            time_string -- a valid time string in the format mm:ss
        Returns:
            milliseconds -- the resulting milliseconds value as an integer type
    '''
    minutes, seconds = time_string.split(':')
    if int(minutes) > 59 or int(minutes) < 0 :
        raise  TimeValueError(minutes,f'Minutes value: {minutes} is not valid')
    if int(seconds) > 59 or int(seconds) < 0 :
        raise  TimeValueError(seconds,f'Seconds value: {seconds} is not valid')

    milliseconds = int(minutes)*60000 + int(seconds)*1000

    return milliseconds 

def milliseconds_to_minutes(milliseconds:int):
    '''
    This function will pass in an integer for the milliseconds value and convert this 
    to a time string in the format mm:ss

        Attributes:
            milliseconds -- an integer value representing a time duration in milliseconds
        Returns:
            time_string -- the resulting time string in format mm:ss
    '''
    
    if millseconds < 0:
        raise TimeValueError(milliseconds,f'Milliseconds value: {milliseconds} cannot be negative')

    converted = milliseconds/60000 #this will convert milliseconds to minutes usually resulting in a float

    minutes, seconds = divmod(converted,1)

    time_string = f'{int(minutes)}:{round(seconds*60):02d}'

    return time_string



 






        

