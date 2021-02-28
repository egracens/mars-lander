require './config'

world = Game::World.new(Levels::EasyOnTheRight.new)

Game::Loop.new(
  interpreter: Game::Interpreter.new(world),
  graphics_engine: Graphics::GosuBackend::Engine.new,
  bot: Bots::DummyBot.new
).start
