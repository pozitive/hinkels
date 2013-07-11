# -*- coding: utf-8 -*-
# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
Article.delete_all
articles = [
  ['О компании', 'Porta variusm hendreit mauris Lorem ipsum dolor ametcon secteter adipcng elit. Praesent magnis. Montes nascetr mugiat suada odio. Morbi nunc odio, gravida atcursus necin luctusuque duis ultricies pharetra magna. Donec accum san malesuada orci. Donec sit amet eros. Lorem ipsum dolor sit amet, consectetuer adipiscing elit.'],
  ['Услуги','Porta variusm hendreit mauris Lorem ipsum dolor ametcon secteter adipcng elitpaesent magnis. Montes nascetr mugiat suada odio. Morbi nunc odio, gravida atcur­sus necin luctus uque duis ultricies pharetra magna. Donec accum san malesuadaorci. Donec sit amet eros. Lorem ipsum dolor sit amet, consectetuer adipiscing elit.'],
  ['Мероприятия','Nulla facilisi. Aenean nec eros. Vestibulumante ipsum primis in faucibus orci luctus etultrices posuere cubilia Curae; Suspendisse sollicitudin velit sed leo. Ut pharetra auguenec augue. Nam elit magna.'],
  ['Новости и публикации','Aenean nec eros. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posu­ere cubilia Curae; Suspendisse sollicitudin velit sed leo. Ut pharetra augue nec augue. Nam elit magna, hendrerit sit amet, tincidunt ac, viverra sed, nulla. Donec porta diam eu'],
  ['Юристы','Fusce euismod consequat ante. Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Pellentesque sed dolor. Aliquam congue fermentum nisl. Mauris accumsan nullavel diam. Sed in lacus ut enim adipiscing aliquet. Nulla venenatis. In pede mi, aliquet sit amet, euismod in, auctor ut, ligula. Aliquam dapibus tinciduntmetus. Praesent justo dolor, lobortis quis, lobortis dignissim, pulvinar ac, lorem.'],
  ['Контакты','8901 Marmora Road, Glasgow, D04 89GR. Freephone:     +1 800 559 6580 Telephone:     +1 959 603 6035 FAX:                  +1 504 889 9898 E-mail: mail@demolink.org'],
  ['О нас','Fusce euismod consequat ante. Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Pellentesque sed dolor. Aliquam congue fermentum nisl. Mauris accumsan nullavel diam. Sed in lacus ut enim adipiscing aliquet. Nulla venenatis. In pede mi, aliquet sit amet, euismod in, auctor ut, ligula. Aliquam dapibus tinciduntmetus. Praesent justo dolor, lobortis quis, lobortis dignissim, pulvinar ac, lorem.'],
  ['Миссия','Fusce euismod consequat ante. Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Pellentesque sed dolor. Aliquam congue fermentum nisl. Mauris accumsan nullavel diam. Sed in lacus ut enim adipiscing aliquet. Nulla venenatis. In pede mi, aliquet sit amet, euismod in, auctor ut, ligula. Aliquam dapibus tinciduntmetus. Praesent justo dolor, lobortis quis, lobortis dignissim, pulvinar ac, lorem.'],
  ['Членство','Fusce euismod consequat ante. Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Pellentesque sed dolor. Aliquam congue fermentum nisl. Mauris accumsan nullavel diam. Sed in lacus ut enim adipiscing aliquet. Nulla venenatis. In pede mi, aliquet sit amet, euismod in, auctor ut, ligula. Aliquam dapibus tinciduntmetus. Praesent justo dolor, lobortis quis, lobortis dignissim, pulvinar ac, lorem.'],
  ['Рекомендации',''],
  ['Миграционное право','Fusce euismod consequat ante. Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Pellentesque sed dolor. Aliquam congue fermentum nisl. Mauris accumsan nullavel diam. Sed in lacus ut enim adipiscing aliquet. Nulla venenatis. In pede mi, aliquet sit amet, euismod in, auctor ut, ligula. Aliquam dapibus tinciduntmetus. Praesent justo dolor, lobortis quis, lobortis dignissim, pulvinar ac, lorem.'],
  ['Корпоративное право','Fusce euismod consequat ante. Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Pellentesque sed dolor. Aliquam congue fermentum nisl. Mauris accumsan nullavel diam. Sed in lacus ut enim adipiscing aliquet. Nulla venenatis. In pede mi, aliquet sit amet, euismod in, auctor ut, ligula. Aliquam dapibus tinciduntmetus. Praesent justo dolor, lobortis quis, lobortis dignissim, pulvinar ac, lorem.'],
  ['Недвижимость','Fusce euismod consequat ante. Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Pellentesque sed dolor. Aliquam congue fermentum nisl. Mauris accumsan nullavel diam. Sed in lacus ut enim adipiscing aliquet. Nulla venenatis. In pede mi, aliquet sit amet, euismod in, auctor ut, ligula. Aliquam dapibus tinciduntmetus. Praesent justo dolor, lobortis quis, lobortis dignissim, pulvinar ac, lorem.'],
  ['Трудовое право','Fusce euismod consequat ante. Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Pellentesque sed dolor. Aliquam congue fermentum nisl. Mauris accumsan nullavel diam. Sed in lacus ut enim adipiscing aliquet. Nulla venenatis. In pede mi, aliquet sit amet, euismod in, auctor ut, ligula. Aliquam dapibus tinciduntmetus. Praesent justo dolor, lobortis quis, lobortis dignissim, pulvinar ac, lorem.'],
  ['Представительство в суде','Fusce euismod consequat ante. Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Pellentesque sed dolor. Aliquam congue fermentum nisl. Mauris accumsan nullavel diam. Sed in lacus ut enim adipiscing aliquet. Nulla venenatis. In pede mi, aliquet sit amet, euismod in, auctor ut, ligula. Aliquam dapibus tinciduntmetus. Praesent justo dolor, lobortis quis, lobortis dignissim, pulvinar ac, lorem.'],]

articles.each do |article|
  Article.find_or_create_by_title(
    :title       => article[0],
    :description => article[1])
end
