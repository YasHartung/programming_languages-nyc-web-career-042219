require 'pry'

def reformat_languages(languages)
  # your code here
  new_hash = {}

  languages.each do |style, language_data|
    language_data.each do |language_name, data|
      data.each do |type, type_data|
          new_hash[language_name] = { type => type_data}
        if new_hash[language_name][:style].length == 0
          new_hash[language_name][:style] = [style]
        else new_hash[language_name][:style] << style
        end
      end
    end
  end
new_hash
end
