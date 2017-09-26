# coding: utf-8


class Player1<Sprite
  def update

    self.x += Input.x*3
    self.y += Input.y*3
  end
end

class Player2<Sprite
  def update

    self.x = Input.mouse_pos_x  # マウスカーソルのx座標
    self.y = Input.mouse_pos_y  # マウスカーソルのy座標
  end
end