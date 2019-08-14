import os

# Up, down, left, right for player 1.
KEYS = {
    'w': ('UP', 'NO_CHANGE'),
    'a': ('NO_CHANGE', 'LEFT')
}

arg2 = 'Value'


class MyApp(os):
    """ The frame for app in the window. """

    def __init__(self, arg1, arg2):
        self.arg1 = arg1
        self.arg2 = arg2

    def mainloop(self):
        """ Bind the keys for the two players. """
        for ch in KEYS:
            self.bind_all(ch, self.rat_1_keystroke)


def main():
    """ Prompt for a maze file, read the maze, and start the game. """
    with open('sample.txt', 'r') as sample_file:
        arg1 = os.read(sample_file)

    app = MyApp(arg1, arg2)
    app.mainloop()


if __name__ == '__main__':
    main()
