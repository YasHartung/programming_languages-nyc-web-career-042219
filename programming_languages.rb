require 'pry'

def reformat_languages(languages)
  # your code here
  new_hash = {}

  languages.each do |style, language_data|
    language_data.each do |language_name, data|
      data.each do |type, type_data|
        if new_hash[language_name][:type] == nil
          binding.pry
          new_hash[language_name] = { type => type_data}
        end
        new_hash[language_name][:style] << style
      end
    end
  end
new_hash
end
