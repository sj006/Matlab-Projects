%Homework pallindrome
function isPalindrome = checkNumberPalindrome(num)
    % Convert the number to a string
    numStr = num2str(num);
    
    % Reverse the string
    reversedStr = reverse(numStr);
    
    % Check if the number string is equal to its reverse
    if strcmp(numStr, reversedStr)
        isPalindrome = true;
    else
        isPalindrome = false;
    end
end

result = checkNumberPalindrome(12321);
disp(result);  


%function isPalindrome = checkPalindrome(str)
    % Remove non-alphanumeric characters and convert to lowercase
  %  cleanedStr = regexprep(lower(str), '[^a-zA-Z0-9]', '');
    
    % Reverse the cleaned string
  %  reversedStr = reverse(cleanedStr);
    
    % Check if the cleaned string is equal to its reverse
 %   if strcmp(cleanedStr, reversedStr)
     %   isPalindrome = true;
 %   else
   %     isPalindrome = false;
  %  end
%end
