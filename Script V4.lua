EnablePrimaryMouseButtonEvents(true)


-- == QUESTI 5 PARAMETRI QUI SOTTO PUOI IMPOSTARLI COME MEGLIO PREFERISCI ==


--                                === CONFIGURAZIONE UMANIZZATA ===

-- In questa sezione regoli la stabilità generale dell'arma e la velocità di risposta dello script.
-- Il codice aggiunge automaticamente un "Jitter" (micro-variazioni casuali di pixel) sia sull'asse X che sull'asse Y,
-- insieme a un ritardo variabile in millisecondi (Delay) per simulare il comportamento imperfetto della mano umana.

local base_y = 10      -- Rinculo verticale (valori positivi spingono il mouse in basso)

local base_x = 0       -- Rinculo orizzontale (0 = spento | positivi spingono a DESTRA | negativi spingono a SINISTRA)

local base_delay = 11  -- Delay base (tempo di attesa in ms tra i micro-movimenti: più è basso, più lo script corregge rapidamente)


--                              === GESTIONE IMPENNATA INIZIALE ===

-- Quasi tutte le armi hanno un "first shot kick", ovvero il primo colpo impenna molto più dei successivi,
-- in questa sezione potrai regolare di quanto si deve abbassare l'arma nei primi colpi in modo da essere subito stabile.

local initial_kick_boost = 5   -- Forza extra verticale solo all'inizio

local initial_kick_loops = 3   -- Per quanti cicli applicare la forza extra


-- == DA QUI IN POI NON TOCCARE ASSOLUTAMENTE NULLA ==


function OnEvent(event, arg)

    if IsKeyLockOn("capslock") then -- Il CapsLock attiva lo script

        if IsMouseButtonPressed(3) then -- Mira

            repeat

                if IsMouseButtonPressed(1) then -- Fuoco

                    local loop_count = 0 -- Resetta il contatore ogni volta che inizi a sparare


                    repeat

                        loop_count = loop_count + 1


                        -- Calcola la base verticale dinamica

                        local current_base_y = base_y

                        if loop_count <= initial_kick_loops then

                            current_base_y = base_y + initial_kick_boost

                        end



                        -- 1. RANDOMIZZAZIONE MOVIMENTO (JITTER)


                        -- Asse Y: Calcolo standard con jitter

                        local rand_y = current_base_y + math.random(-2, 2)


                        -- Asse X: Applica la compensazione fissa di base + il jitter casuale (-1, 1)

                        local rand_x = base_x + math.random(-1, 1)


                        MoveMouseRelative(rand_x, rand_y)


                        -- 2. RANDOMIZZAZIONE TEMPO (MS)

                        local rand_delay = base_delay + math.random(-2, 3)

                        Sleep(rand_delay)


                    until not IsMouseButtonPressed(1)

                end

                Sleep(10) -- Per non sovraccaricare la telemetria

            until not IsMouseButtonPressed(3)

        end

    end

end

-- SCRIPT BY SickDibbe (19.05.2026) - versione 4.0