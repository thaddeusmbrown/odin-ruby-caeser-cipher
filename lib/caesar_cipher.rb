def caesar_cipher(message, shift_factor)
    
    # convert shift_factor to number between 1 and 26 to simplify encryption step
    shift_factor = shift_factor % 26

    # convert message input to ASCII encoding
    message_ascii = message.bytes

    #go through each character, see if it is a letter, and shift it based on shift_factor
    message_ascii_shifted = []

    message_ascii.each do |character|

        if character.between?(65, 90) && character + shift_factor <= 90 # shift uppercase characters that don't overflow
            message_ascii_shifted.push(character + shift_factor)
        elsif character.between?(65, 90) # shift uppercase characters that do overflow
            message_ascii_shifted.push((character + shift_factor) % 90 + 64)
        elsif character.between?(97, 122) && character + shift_factor <= 122 #shift lowercase characters that don't overflow
            message_ascii_shifted.push(character + shift_factor)
        elsif character.between?(97, 122) # shift lowercase characters that do overflow
            message_ascii_shifted.push((character + shift_factor) % 122 + 96)
        else # push any non-letter characters into the string array
            message_ascii_shifted.push(character)
        end

    end

    #return the encrypted message
    message_shifted = message_ascii_shifted.map { |character| character.chr }
    message_shifted = message_shifted.join('')
    message_shifted
end
