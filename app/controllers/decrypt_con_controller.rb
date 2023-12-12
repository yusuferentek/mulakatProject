require 'aes'
class DecryptConController < ApplicationController
  protect_from_forgery with: :exception
  def DecryptView
  end
  protect_from_forgery with: :null_session
  def decrypt
    data = JSON.parse(request.body.read)
    key = 'manus'
    encrypted_text = data['encrypted_text']



    #decipher = OpenSSL::Cipher.new('AES-256-CBC')
    #decipher.decrypt
    #decipher.key = Digest::SHA256.digest(key)
    #decipher.iv = '1111111111111111'
    #puts decipher.key_len
    #decrypted_text = decipher.update(Base64.decode64(encrypted_text)) + decipher.final
    puts encrypted_text
    puts key
    decrypted_text =AES.decrypt(encrypted_text, key,{})

    render json: { decrypted_text: decrypted_text }

  end

end
