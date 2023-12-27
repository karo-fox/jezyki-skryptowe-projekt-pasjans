from app.Game import Game


counter = 0
game = Game()
while not game.get_result():
    counter += 1
    game = Game()
    game.run()
print(game)
print("Liczba partii: ", counter)
