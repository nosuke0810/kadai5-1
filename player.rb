# coding: utf-8


class Player1<Sprite
  def update

    self.x += Input.x*3
    self.y += Input.y*3
  end
end

class Player2<Sprite
  def update

    self.x = Input.mouse_pos_x  # �}�E�X�J�[�\����x���W
    self.y = Input.mouse_pos_y  # �}�E�X�J�[�\����y���W
  end
end