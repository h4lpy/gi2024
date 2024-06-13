import std/strformat
import os
import RC4

proc printFlag() =
    echo(fromRC4("dynamite", "06077d19c166f9664697140dd5cf5fbd1980b20f2c949a0e1f0620dad71082d4de49"))


proc playerWins() =
    echo "BOOOOOOOM!"
    sleep(1000)
    echo "Wait! That wasn't part of the rules!"
    sleep(1000)
    printFlag()


proc computerWins() = 
    echo "[#] Unlucky! I knew I would win"
    sleep(1000)
    echo "[#] Better luck next time!"
    sleep(1000)


proc determineWinner(computerChoice: string, playerChoice: string) =
    echo &"[#] You chose: {playerChoice}"
    sleep(1000)
    if playerChoice == "dynamite":
        playerWins()
    else:
        echo &"[#] I choose: {computerChoice}"
        sleep(1000)
        computerWins()


proc getComputerChoice(playerChoice: string): string =
    if playerChoice == "rock":
        return "paper"
    elif playerChoice == "paper":
        return "scissors"
    elif playerChoice == "scissors":
        return "rock"
    elif playerChoice == "dynamite":
        return ""


proc main() =
    echo "[#] Hello friend..."
    sleep(1000)
    echo "[#] Welcome to rock, paper, scissors!"
    sleep(1000)
    echo "[#] Let's play!"
    sleep(1000)
    stdout.write("[>] Enter your choice (rock, paper, scissors): ")

    var computerChoice = ""
    var playerChoice = ""

    while playerChoice == "":
        var playerChoice = readLine(stdin)
        if playerChoice == "rock":
            computerChoice = getComputerChoice(playerChoice)
            determineWinner(computerChoice, playerChoice)
        elif playerChoice == "paper":
            computerChoice = getComputerChoice(playerChoice)
            determineWinner(computerChoice, playerChoice)
        elif playerChoice == "scissors":
            computerChoice = getComputerChoice(playerChoice)
            determineWinner(computerChoice, playerChoice)
        elif playerChoice == "dynamite":
            computerChoice = getComputerChoice(playerChoice)
            determineWinner(computerChoice, playerChoice)
        else:
            echo "[!] Invalid choice. Please enter either rock, paper, or scissors."
            playerChoice = ""


main()
