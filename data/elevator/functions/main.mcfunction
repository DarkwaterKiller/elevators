execute as @a[tag=!hassneaktrack] run function elevator:addtosneaktrack
execute as @a[tag=!hasteleportcooldown] run function elevator:addtoteleportcooldown


execute as @a[tag=!canelevate, nbt={OnGround:1b}] run tag @s add canelevate
execute as @a[tag=canelevate, scores={teleportcooldown=0}] at @s if block ~ ~-1.5 ~ minecraft:beacon if block ~ ~3 ~ minecraft:beacon align xyz run function elevator:up

execute as @a[scores={sneaktrack=1.., teleportcooldown=0}] at @s if block ~ ~-1 ~ minecraft:beacon if block ~ ~-5 ~ minecraft:beacon align xyz run tag @s add candescend
execute as @a[tag=candescend, scores={teleportcooldown=0}] at @s align xyz run function elevator:down
execute as @a[scores={sneaktrack=1..}] run scoreboard players set @s sneaktrack 0

execute as @a[scores={teleportcooldown=1..}] run scoreboard players remove @s teleportcooldown 1