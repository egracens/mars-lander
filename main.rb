require './config'

Game::Loop.new(
  level: Levels::EasyOnTheRight.new,
  graphics_engine: Graphics::Console::Engine.new
).start
