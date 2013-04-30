__Code-breaker starts game:__ The code-breaker opens a shell, types a command, and sees a welcome message and a prompt to enter the first guess.

__Code-breaker submits guess:__ The code-breaker enters a guess, and the system replies by marking the guess according to the marking algorithm.

__Code-breaker wins game:__ The code-breaker enters a guess that matches the secret code exactly. The system responds by mark- ing the guess with four + signs and a message congratulating the code-breaker on breaking the code in however many guesses it took.

__Code-breaker loses game:__ After some number of turns, the game tells the code-breaker that the game is over (need to decide how many turns and whether to reveal the code).

__Code-breaker plays again:__ After the game is won or lost, the system prompts the code-breaker to play again. If the code-breaker indi- cates yes, a new game begins. If the code-breaker indicates no, the system shuts down.

__Code-breaker requests hint:__ At any time during a game, the code- breaker can request a hint, at which point the system reveals one of the numbers in the secret code.

__Code-breaker saves score:__ After the game is won or lost, the code- breaker can opt to save information about the game: who (ini- tials?), how many turns, and so on.