scoreboard objectives add sneaktrack minecraft.custom:minecraft.sneak_time
scoreboard objectives add teleportcooldown dummy
execute as @a run function elevator:addtoteleportcooldown
execute as @a run function elevator:addtosneaktrack