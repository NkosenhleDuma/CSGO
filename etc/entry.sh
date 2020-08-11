#!/bin/bash

bash "${STEAMCMDDIR}/steamcmd.sh" +login anonymous \
				+force_install_dir "${STEAMAPPDIR}" \
				+app_update "${STEAMAPPID}" \
				+quit

# Change hostname on first launch (you can comment this out if it has done it's purpose)
#sed -i -e 's/{{SERVER_HOSTNAME}}/'"${SRCDS_HOSTNAME}"'/g' "${STEAMAPPDIR}/${STEAMAPP}/cfg/server.cfg"

${STEAMAPPDIR}/srcds_run -game csgo -console -autoupdate -steam_dir ${STEAMCMDDIR} -steamcmd_script ${STEAMAPPDIR}/csgo_update.txt -usercon +fps_max $SRCDS_FPSMAX \
			-tickrate $SRCDS_TICKRATE -port $SRCDS_PORT +tv_port $SRCDS_TV_PORT +clientport $SRCDS_CLIENT_PORT -maxplayers_override $SRCDS_MAXPLAYERS +game_type $SRCDS_GAMETYPE +game_mode $SRCDS_GAMEMODE \
			+mapgroup $SRCDS_MAPGROUP +map $SRCDS_STARTMAP +sv_setsteamaccount $SRCDS_TOKEN +rcon_password $SRCDS_RCONPW +sv_password $SRCDS_PW +sv_region $SRCDS_REGION +sv_lan $SRCDS_LAN

${STEAMAPPDIR}/srcds_run -game csgo -console -autoupdate -steam_dir ${STEAMCMDDIR} -steamcmd_script ${STEAMAPPDIR}/csgo_update.txt -usercon +fps_max $SRCDS_FPSMAX -tickrate $SRCDS_TICKRATE -port $SRCDS_PORT +tv_port $SRCDS_TV_PORT +clientport $SRCDS_CLIENT_PORT -maxplayers_override $SRCDS_MAXPLAYERS +game_type $SRCDS_GAMETYPE +game_mode $SRCDS_GAMEMODE +mapgroup $SRCDS_MAPGROUP +map de_cache +sv_setsteamaccount 75746D037C8EC44DC1E4224C4228E970 +rcon_password $SRCDS_RCONPW +sv_password $SRCDS_PW +sv_region $SRCDS_REGION +sv_lan 1

${STEAMAPPDIR}/srcds_run -game csgo -console -autoupdate -steam_dir ${STEAMCMDDIR} -steamcmd_script ${STEAMAPPDIR}/csgo_update.txt -usercon -tickrate $SRCDS_TICKRATE -port $SRCDS_PORT +game_mode $SRCDS_GAMEMODE +mapgroup $SRCDS_MAPGROUP +map de_cache +sv_setsteamaccount $SRCDS_TOKEN +sv_lan 1