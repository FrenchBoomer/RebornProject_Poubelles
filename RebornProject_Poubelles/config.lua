local Touches = {

        ["ESC"] = 322, ["F1"] = 288, ["F2"] = 289, ["F3"] = 170, ["F5"] = 166, ["F6"] = 167, ["F7"] = 168, ["F8"] = 169, ["F9"] = 56, ["F10"] = 57,
        ["~"] = 243, ["1"] = 157, ["2"] = 158, ["3"] = 160, ["4"] = 164, ["5"] = 165, ["6"] = 159, ["7"] = 161, ["8"] = 162, ["9"] = 163, ["-"] = 84, ["="] = 83, ["BACKSPACE"] = 177,
        ["TAB"] = 37, ["Q"] = 44, ["W"] = 32, ["E"] = 38, ["R"] = 45, ["T"] = 245, ["Y"] = 246, ["U"] = 303, ["P"] = 199, ["["] = 39, ["]"] = 40, ["ENTER"] = 18,
        ["CAPS"] = 137, ["A"] = 34, ["S"] = 8, ["D"] = 9, ["F"] = 23, ["G"] = 47, ["H"] = 74, ["K"] = 311, ["L"] = 182,
        ["LEFTSHIFT"] = 21, ["Z"] = 20, ["X"] = 73, ["C"] = 26, ["V"] = 0, ["B"] = 29, ["N"] = 249, ["M"] = 244, [","] = 82, ["."] = 81,
        ["LEFTCTRL"] = 36, ["LEFTALT"] = 19, ["SPACE"] = 22, ["RIGHTCTRL"] = 70,
        ["HOME"] = 213, ["PAGEUP"] = 10, ["PAGEDOWN"] = 11, ["DELETE"] = 178,
        ["LEFT"] = 174, ["RIGHT"] = 175, ["TOP"] = 27, ["DOWN"] = 173,
        ["NENTER"] = 201, ["N4"] = 108, ["N5"] = 60, ["N6"] = 107, ["N+"] = 96, ["N-"] = 97, ["N7"] = 117, ["N8"] = 61, ["N9"] = 118

    }

ToucheClavier = Touches["E"] -- Touche d'ouverture du menu
Langue = "fr" -- Choix de la langue (Français = fr, Anglais = en, Espagnol = es)
ArgentMinimum = 1 -- argent minimum offert au joueur lors de la reussite de la fouille de la poubelle
ArgentMaximum = 25 -- argent maximum offert au joueur lors de la reussite de la fouille de la poubelle
DistanceDetectionObjets = 15.5001 -- distance minimum (rayon en metres) de fouille d'une autre poubelle que celle deja effectuer
DistanceMinimumDeFouille = 15.5001 -- distance d'obtention de la liste des props autour de soit pour la table 

Config = {}

Config.objects = {

		{object = 577432224},
		{object = 684586828},
		{object = 218085040},
		{object = 666561306},
		{object = -58485588},
		{object = -206690185},
		{object = 1511880420},
		{object = 682791951},
		{object = 1437508529},
		{object = -130812911},
		{object = 1614656839},
		{object = 1329570871},
		{object = 1143474856},
		{object = -228596739},
		{object = -468629664},
		{object = -1426008804},
		{object = -1187286639},
		{object = -1096777189},
		{object = -413198204},
		{object = -1830793175},
		{object = -329415894},
		{object = -341442425},
		{object = 1792999139},
		{object = 234941195},
		{object = -654874323},
		{object = 1010534896},
		{object = 651101403},
		{object = 909943734},

}

Locales = {
    ['fr'] = {
        ['toucheactivation'] = "~INPUT_PICKUP~ pour fouiller la poubelle",
        ['notificationpoubelle1'] = "🚮 Vous avez trouve : ",
        ['notificationpoubelle2'] = "🚮 ~r~Vous vous etes salis les mains inutilement vous n'avez rien trouver d'interessant~s~",
        ['logoargentnotif'] = " $",
        ['NotificationDejaFaite'] = "🚮 ~r~Vous avez deja fouiller cette poubelle~s~",
    },

    ['en'] ={
        ['toucheactivation'] = "~INPUT_PICKUP~ to search the trash",
        ['notificationpoubelle1'] = "You found : ",
        ['notificationpoubelle2'] = "~r~You've gotten your hands dirty you have not found anything interesting~s~",
        ['logoargentnotif'] = " £",
        ['NotificationDejaFaite'] = "~r~You have already searched this trash~s~",
    },

    ['es'] ={
        ['toucheactivation'] = "~INPUT_PICKUP~ para buscar la basura",
        ['notificationpoubelle1'] = "Habéis encontrado : ",
        ['notificationpoubelle2'] = "~r~Te has ensuciado las manos, no has encontrado nada interesante~s~",
        ['logoargentnotif'] = " €",
        ['NotificationDejaFaite'] = "~r~Ya has buscado esta papelera~s~",
    },
}