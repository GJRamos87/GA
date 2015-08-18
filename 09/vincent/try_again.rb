class Cipher

  def initialize
    @plaintext = ('a'..'z').to_a
    @reverse = @plaintext.reverse
  end

  def encode(input)
    input_arr = input.split("")
    crypt_arr = []
    input_arr.each do |x|
      crypt_arr << @reverse[@plaintext.index(x)]
    end
    puts crypt_arr.join
  end

  def decode(input)
    input_arr = input.split("")
    plain_arr = []
    input_arr.each do |x|
      plain_arr << @plaintext[@reverse.index(x)]
    end
    puts crypt_arr.join
  end
end

secret = Cipher.new
secret.encode('hello')
secret.decode('svool')