def balanced_brackets?(string)
  start_brackets = []
  for char in string.chars.to_a do
    if(char=="{" || char=="[" || char=="(")
      start_brackets.push(char);
    else
      last_value = start_brackets[start_brackets.length - 1];
      case char
        when "}"
          if( last_value == "{")
            start_brackets.pop();
          end  
        when "]"
        if( last_value == "[")
          start_brackets.pop();
        end  
         when ")"
          if(last_value == "(")
            start_brackets.pop();
         end 
      end
    end
  end
  return start_brackets.length == 0
end

puts balanced_brackets?('(hello)[world]')
# => true

puts balanced_brackets?('([)]')
# => false

puts balanced_brackets?('[({}{}{})([])]')
# => true