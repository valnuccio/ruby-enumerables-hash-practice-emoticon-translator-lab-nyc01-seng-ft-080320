require 'yaml'
require 'pry'

def load_library (file_path)
  library=YAML.load_file(file_path)
  final_hash={}
  library.each do |key,value|
    final_hash[key]={}
    final_hash[key][:english]=value[0]
    final_hash[key][:japanese]=value[1]
  end
final_hash    
end

def get_english_meaning(file_path, emoticon)
  library=load_library(file_path)
  library.each do |key,value|
    value.each do |language,image|
      if image==emoticon
        return library[key]
    binding.pry
    if value==emoticon
      return key
      end
    end
    end
  end

# def get_japanese_meaning (file_path, emoticon)
#   library= load_library(file_path)
#   library.each do |key,value|
#     if library[key][:english]==emoticon
#       return library[key][:japanese]
#   end
#   end
#   "Sorry, that emoticon was not found"
# end

# # def get_japanese_emoticon(file_path, emoticon)
# #   library=load_library(file_path)
# #   library.each do |key,value|
# #     if library[key][:english]==emoticon
# #       return library[key][:japanese]
# #     end
# #   end
# #   "Sorry, that emoticon was not found"
# # end

# def get_english_meaning(file_path, emoticon)
#   library=load_library(file_path)
#   library.each do |key,value|
#     if library[key][:japanese]==emoticon
#       return library
#     end
#   binding.pry
#   end
# "Sorry, that emoticon was not found"
# end