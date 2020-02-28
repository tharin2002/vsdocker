# Docker container for Vintage Story server

>## Warning
>**This is meant to be used with a dedicated server only!  In most instances, running the server natively is sufficient!**


Q: What is this and what does it do?

A: This is a [docker](https://www.docker.com/) container, used with the Docker application to run software anywhere that supports Docker!  This can make setup of complex applications quick and easy.

Q: So is it like a virtual machine?

A:  Kind of, but not really.  Virtual machines have a lot of overhead and will make whatever application you run inside them much slower than if you ran it outside the virtual machine.  Because of the way docker works, you get the same benefits but with much less overhead!

Q: What do I need to run this?

A: Just [download Docker](https://www.docker.com/products/docker-desktop)!  If you are on linux, you can often install docker from your distributions software repository.  [Check here](https://www.tutorialspoint.com/docker/installing_docker_on_linux.htm) if you need help.

Q: I've got Docker, now what?

A: Add your game files to the appropriate directory.  Server files can be downloaded from the downloads page at [vintagestory.at](vintagestory.at).  Extract the server files inside the `vintagestoryserver` directory.  If you have existing game data files, you can drop them in the `data` folder as well!  Then, just open the docker-compose.yml file with the GUI, or run `docker-compose up` on the command line in the same directory as the docker-compose.yml file.

Q: Now that my server is running, how to I connect to it?

A: To connect with the game client, just add a server with the correct hostname or IP address.  The default port is on 42420 and may need to be port forwarded or opened in a firewall, depending on your network.  If you need command line acces, you can run `docker-compose exec server bash`.  From here, you can directly run server commands via `./server.sh command "/op MyCharacter"`

Q: How do I change the port?

A: Edit the `docker-compose.yml` file.  On the port line, the first number is the port you use to connect to the game.  Do not change the second number.  To connect to the game on port 5000, the line would be changed to read: `- "5000:42420"`.  If you are already running the server, stop it with `docker-compose stop` and start again with `docker-compose start`.

Q: Can I add mods or edit game files?

A: You can!  Both `vintagestoryserver` and `data` directories are mapped to the docker containers, so any files you add or change will instantly apply to the server as well!  Vintage Story is a very easily moddable game, so feel free to tweak any of the json files you see in the data directory to get started modding!  For more information, join the [Vintage Story Discord](https://discord.gg/Svej6Tb) or check out the [wiki](https://wiki.vintagestory.at/index.php?title=Main_Page).

> ## TL;DR
>
> Dependencies: Docker
>
> Setup: [Download server files](https://account.vintagestory.at/), extract to `vintagestoryserver`
>
> Optional: Add existing game data files to `data` folder
>
> Run: `docker-compose up`
>
> Change port: Edit `docker-compose.yml`
>
> Add mods: Drop files directly into `Mods` folder in either `vintagestoryserver` or `data` directory