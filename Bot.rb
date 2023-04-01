require 'telegram/bot'

token = '6277820749:AAGdgZPFRc5Mnz1oicwTBv9cnbcFEecLvJ4'
Telegram::Bot::Client.run(token) do |bot|
        bot.listen do |message|
            case message.text
            when '/start'
            bot.api.send_message(chat_id: message.chat.id, text: "Welcome to Smartson Enterprises")
            question = "How can I help you?, #{message.from.first_name}"
            answers =
                Telegram::Bot::Types::ReplyKeyboardMarkup.new(
                    keyboard: [
                    [{ text: 'Our Products 🛒' }, { text: 'Track_order 🛤️' }],
                    [{ text: 'About Us' }],
                    ],
                    one_time_keyboard: true
                )
            bot.api.send_message(chat_id: message.chat.id, text: question, reply_markup: answers)

            when 'About Us'
                kb =[
                    Telegram::Bot::Types::InlineKeyboardButton.new(text: 'Out Website', url: 'https://smartsonenterprises.com/')
                ],
                kb =[
                    Telegram::Bot::Types::InlineKeyboardButton.new(text: 'Flipkart', url: 'https://www.flipkart.com/smartson-a4-stickers-1up-210-x-297mm-100-sheet-pack-self-adhesive-paper-label/p/itm6b772fcbeeb42?pid=PRLGNC43XVQBAGVD&lid=LSTPRLGNC43XVQBAGVDOVBIVX&marketplace=FLIPKART&q=smartson+enterprises&store=search.flipkart.com&srno=s_1_11&otracker=search&otracker1=search&fm=organic&iid=4ddf2e4e-9d2c-42c4-b74b-863f7914c9cc.PRLGNC43XVQBAGVD.SEARCH&ppt=hp&ppn=homepage&ssid=plh11mdagw0000001680374224298&qH=1491535c0051b225')
                ],
                kb =[
                    Telegram::Bot::Types::InlineKeyboardButton.new(text: 'IndiaMart', url: 'https://www.indiamart.com/smartson-enterprises/?pos=1&kwd=smartson%20enterprises&tags=||||7535.5635|Price|product|||MDC')
                ]
                markup = Telegram::Bot::Types::InlineKeyboardMarkup.new(inline_keyboard: kb)
                bot.api.send_message(chat_id: message.chat.id, text: 'Choose Courier patner as per tracking details', reply_markup: markup)

            when 'Track_order 🛤️'
                kb =[
                    Telegram::Bot::Types::InlineKeyboardButton.new(text: 'Mahavir Courier', url: 'http://shreemahavircourier.com/')
                ],
                kb =[
                    Telegram::Bot::Types::InlineKeyboardButton.new(text: 'Delhivery Courier', url: 'https://www.delhivery.com/')
                ],
                kb =[
                    Telegram::Bot::Types::InlineKeyboardButton.new(text: 'Sky King', url: 'https://skyking.co/track?cno=378662902')
                ]
                markup = Telegram::Bot::Types::InlineKeyboardMarkup.new(inline_keyboard: kb)
                bot.api.send_message(chat_id: message.chat.id, text: 'Choose Courier patner /n as per tracking details', reply_markup: markup)

            when 'Our Products 🛒'
                question = "Hey #{message.from.first_name}, Here you can order"
            answers =
                Telegram::Bot::Types::ReplyKeyboardMarkup.new(
                keyboard: [
                    [{ text: 'Labels' }, { text: 'Ribbons' }],
                    [{ text: 'Coding Foils' }, { text: 'Tags' }, { text: 'Taffeta Rolls' } ],
                    [{ text: 'Barcode Printer' }, { text: 'Scanners' }]
                ],
                one_time_keyboard: true
                )
            bot.api.send_message(chat_id: message.chat.id, text: question, reply_markup: answers)

            when 'Labels'
                kb = [[
                        Telegram::Bot::Types::InlineKeyboardButton.new(text: 'A4 Labels', url: 'https://www.indiamart.com/smartson-enterprises/a4-self-adhesive-labels.html'),
                        Telegram::Bot::Types::InlineKeyboardButton.new(text: 'Hologram Stickers', url: 'https://www.indiamart.com/smartson-enterprises/hologram-stickers.html')
                    ],
                    [
                        Telegram::Bot::Types::InlineKeyboardButton.new(text: 'Chromo Labels', url: 'https://www.indiamart.com/smartson-enterprises/chromo-barcode-labels.html'),
                        Telegram::Bot::Types::InlineKeyboardButton.new(text: 'DT Labels', url: 'https://www.indiamart.com/smartson-enterprises/direct-thermal-paper-label.html')
                    ], 
                    [
                        Telegram::Bot::Types::InlineKeyboardButton.new(text: 'NT labels', url: 'https://www.indiamart.com/smartson-enterprises/non-tearable-labels.html'),
                        Telegram::Bot::Types::InlineKeyboardButton.new(text: 'Printed Labels', url: 'https://www.indiamart.com/smartson-enterprises/printed-labels.html')
                    ]
                    
                    ]
                markup = Telegram::Bot::Types::InlineKeyboardMarkup.new(inline_keyboard: kb)
                bot.api.send_message(chat_id: message.chat.id, text: 'Tap to open for Labels', reply_markup: markup)

            when 'Ribbons'
                kb =[
                    Telegram::Bot::Types::InlineKeyboardButton.new(text: 'TTO Premium Ribbons', url: 'https://www.indiamart.com/smartson-enterprises/tto-ribbons.html'),
                    Telegram::Bot::Types::InlineKeyboardButton.new(text: 'TTO Domino Ribbons', url: 'https://www.indiamart.com/smartson-enterprises/tto-ribbons.html#2849504300755')
                ],
                [
                    Telegram::Bot::Types::InlineKeyboardButton.new(text: 'TTR Ribbons', url: 'https://www.indiamart.com/smartson-enterprises/ttr-thermal-transfer-ribbon.html'),
                    Telegram::Bot::Types::InlineKeyboardButton.new(text: 'TTR Color Ribbons', url: 'https://www.indiamart.com/smartson-enterprises/ttr-thermal-transfer-ribbon.html#21755572748')
                ]
                markup = Telegram::Bot::Types::InlineKeyboardMarkup.new(inline_keyboard: kb)
                bot.api.send_message(chat_id: message.chat.id, text: 'Tap to open for Ribbons', reply_markup: markup)

            when 'Coding Foils'
                kb =[
                    Telegram::Bot::Types::InlineKeyboardButton.new(text: 'Hot Stamping Foil', url: 'https://www.indiamart.com/smartson-enterprises/hot-stamping-foil.html')
                ],
                [
                    Telegram::Bot::Types::InlineKeyboardButton.new(text: 'Hot Ink Roll', url: 'https://www.indiamart.com/smartson-enterprises/hot-stamping-foil.html#2849512627730')
                ]
                markup = Telegram::Bot::Types::InlineKeyboardMarkup.new(inline_keyboard: kb)
                bot.api.send_message(chat_id: message.chat.id, text: 'Tap to open for Ribbons', reply_markup: markup)

            when 'Tags'
                kb =[
                    Telegram::Bot::Types::InlineKeyboardButton.new(text: 'Paper Tags', url: 'https://www.indiamart.com/smartson-enterprises/price-tag.html')
                ],
                [
                    Telegram::Bot::Types::InlineKeyboardButton.new(text: 'jewellery Tags', url: 'https://www.indiamart.com/smartson-enterprises/jewelry-tags.html')
                ]
                markup = Telegram::Bot::Types::InlineKeyboardMarkup.new(inline_keyboard: kb)
                bot.api.send_message(chat_id: message.chat.id, text: 'Tap to open for Tags', reply_markup: markup)
                
            when 'Taffeta Rolls'
                kb =[
                    Telegram::Bot::Types::InlineKeyboardButton.new(text: 'Taffeta Roll', url: 'https://www.indiamart.com/smartson-enterprises/taffeta-cloth-roll.html')
                ],
                [
                    Telegram::Bot::Types::InlineKeyboardButton.new(text: 'Taffeta Cloth Roll', url: 'https://www.indiamart.com/smartson-enterprises/taffeta-cloth-roll.html')
                ]
                
                markup = Telegram::Bot::Types::InlineKeyboardMarkup.new(inline_keyboard: kb)
                bot.api.send_message(chat_id: message.chat.id, text: 'Tap to open for Taffeta Rolls', reply_markup: markup)
             
            when 'Barcode Printer'
                kb =[
                    Telegram::Bot::Types::InlineKeyboardButton.new(text: 'Zebra ZD220 Desktop Barcode Printer', url: 'https://www.indiamart.com/smartson-enterprises/barcode-printer.html#21794062788')
                ],
                kb =[
                    Telegram::Bot::Types::InlineKeyboardButton.new(text: 'TSC Barcode Label Printers', url: 'https://www.indiamart.com/smartson-enterprises/barcode-printer.html#21794061912')
                ],
                kb =[
                    Telegram::Bot::Types::InlineKeyboardButton.new(text: 'Argox CP 2140 Barcode Printer', url: 'https://www.indiamart.com/smartson-enterprises/barcode-printer.html#21755573473')
                ],
                kb =[
                    Telegram::Bot::Types::InlineKeyboardButton.new(text: 'TVS LP 45 Lite Barcode Printer', url: 'https://www.indiamart.com/smartson-enterprises/barcode-printer.html#21794061333')
                ]
                markup = Telegram::Bot::Types::InlineKeyboardMarkup.new(inline_keyboard: kb)
                bot.api.send_message(chat_id: message.chat.id, text: 'Tap to open for Printers', reply_markup: markup)
            
            when 'Scanners'
                kb =[
                    Telegram::Bot::Types::InlineKeyboardButton.new(text: 'Datalogic GPS4400 Hands Free Scanner', url: 'https://www.indiamart.com/smartson-enterprises/barcode-scanners.html#21794055962')
                ],
                kb =[
                    Telegram::Bot::Types::InlineKeyboardButton.new(text: 'Symbol Handsfree Barcode Scanner', url: 'https://www.indiamart.com/smartson-enterprises/barcode-scanners.html#21794061588')
                ],
                kb =[
                    Telegram::Bot::Types::InlineKeyboardButton.new(text: 'Bluetooth Barcode Scanner', url: 'https://www.indiamart.com/smartson-enterprises/barcode-scanners.html#21755572933')
                ],
                kb =[
                    Telegram::Bot::Types::InlineKeyboardButton.new(text: 'Metrologic Handsfree Barcode Scanner', url: 'https://www.indiamart.com/smartson-enterprises/barcode-scanners.html#21794059473')
                ]
                markup = Telegram::Bot::Types::InlineKeyboardMarkup.new(inline_keyboard: kb)
                bot.api.send_message(chat_id: message.chat.id, text: 'Tap to open for Scanners', reply_markup: markup)

            when '/stop'
                kb = Telegram::Bot::Types::ReplyKeyboardRemove.new(remove_keyboard: true)
                bot.api.send_message(chat_id: message.chat.id, text: 'See you soon 😊', reply_markup: kb)
            end
      end
end
