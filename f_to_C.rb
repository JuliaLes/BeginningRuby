# Converting Farenheit to Celsius 

def f_to_C (f)
    
    c = ((f - 32.0) * 5.0/9.0).round(1)   
    return "#{f} degrees Farenheit is equal to #{c} degrees Celsius."
    
end
