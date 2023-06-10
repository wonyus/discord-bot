from bot import MusicBot
import os
import time
from threading import Thread




def main():
    def lavarun():
        os.system("java -jar Lavalink.jar")

    print("Starting processes!")
    time.sleep(5)
    print("Running Lavalink.")
    Thread(target=lavarun).start()
    time.sleep(10)
    print("done Lavalink")

    bot = MusicBot()
    bot.run()


if __name__ == "__main__":
    main()
