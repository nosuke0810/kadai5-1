# coding: utf-8
require 'dxruby'

require_relative 'player'
require_relative 'enemy'
require_relative 'painn'

Window.width  = 800
Window.height = 600

player_img = Image.load("apple.png")
player_img.setColorKey([0, 0, 0])

enemy_img = Image.load("penn.png")
enemy_img.setColorKey([0, 0, 0])

pain_img = Image.load("pain.png")
pain_img.setColorKey([0, 0, 0])



players = [Player2.new(600, 500, player_img),Player1.new(200, 500, pain_img)]

  
enemies = []
30.times do
  
end

Window.loop do
  enemies << Enemy.new(rand(800), rand(600), enemy_img)
  break if Input.keyPush?(K_ESCAPE)

  Sprite.update(enemies)
  Sprite.draw(enemies)

  Sprite.update(players)
  Sprite.draw(players)



  # 当たり判定
  Sprite.check(players, enemies)
end