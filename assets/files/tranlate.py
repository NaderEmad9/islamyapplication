from deep_translator import GoogleTranslator
import json

def translate_titles(input_file, output_file, target_language='en'):
    translator = GoogleTranslator(source='auto', target=target_language)
    
    with open(input_file, 'r', encoding='utf-8') as file:
        lines = file.readlines()
    
    translations = {}
    for line in lines:
        title = line.strip()
        if title:
            translation = translator.translate(title)
            translations[title] = translation
    
    with open(output_file, 'w', encoding='utf-8') as file:
        json.dump(translations, file, ensure_ascii=False, indent=4)

# Replace 'ahadeth.txt' with your input file and 'translations.json' with your output file
translate_titles('ahadeth.txt', 'translations.json')