package;

import flixel.util.FlxTimer;
import Controls.KeyboardScheme;
import flixel.input.keyboard.FlxKey;
import flash.text.TextField;
import flixel.FlxG;
import flixel.FlxSprite;
import flixel.addons.transition.FlxTransitionableState;
import flixel.addons.display.FlxGridOverlay;
import flixel.group.FlxGroup.FlxTypedGroup;
import flixel.math.FlxMath;
import flixel.text.FlxText;
import flixel.util.FlxColor;
import lime.utils.Assets;

#if windows
import Discord.DiscordClient;
#end


//TOB is sad after removing all of this and replacing it with 1 picture
// :(

class CreditState extends MusicBeatState
{
    var credsText:FlxText;
    var lolText:FlxText;
    var otherText:FlxText;
    var otherSext:FlxText;
    var coolText:FlxText;
    var secondPage:Bool = false;
    var bg:FlxSprite = new FlxSprite().loadGraphic(Paths.image('CREDITS'));

    override function create()
        {
            remove(PlayState.blackShit);
			remove(PlayState.epicText);

            transIn = FlxTransitionableState.defaultTransIn;
		    transOut = FlxTransitionableState.defaultTransOut;
            add(bg);

            FlxG.sound.playMusic(Paths.music('BeanBox'), 0);
		    FlxG.sound.music.fadeIn(2, 0, 0.8);

            #if windows
		    // Updating Discord Rich Presence
		    DiscordClient.changePresence("Looking at the Credits like a boss", null);
		    #end

            /* credsText = new FlxText(0, 0, 0, "THANKS TO: \nVALIBUCK: THE LEADER\nGOSHA: ARTIST\nTREEG: ARTIST\nTOB: MAIN CODER\nSEAN: CODING SUPPORT\nSNOCONE_EX: COMPOSER\nTOTALLY NOT GENJI: COMPOSER\nYEET: ARTIST\nAND MORE!", 18);
		    credsText.setFormat(Paths.font("vcr.ttf"), 64);
		    credsText.screenCenter(X);
            credsText.screenCenter(Y);
            add(credsText);

            lolText = new  FlxText(0, 600, 0, "AND MORE!", 9);
            lolText.setFormat(Paths.font("vcr.ttf"), 64);
		    lolText.screenCenter(X);
            add(lolText);

            coolText = new FlxText(0, 0, 0, "LIKE:\nKUBAJZ: THE REMASTERED SPRITES", 18);
            coolText.setFormat(Paths.font("vcr.ttf"), 64);
            coolText.screenCenter(X);
            coolText.screenCenter(Y);

            otherText = new FlxText(0, 0, 0, "PAGE 1 OUT OF 2.", 18);
            otherText.setFormat(Paths.font("vcr.ttf"), 64);
            add(otherText);

            otherSext = new FlxText(0, 0, 0, "PAGE 2 OUT OF 2.", 18);
            otherSext.setFormat(Paths.font("vcr.ttf"), 64);*/


        }
    override function update(elapsed:Float)
        {
                if (controls.BACK)
                    {
                        FlxG.switchState(new MainMenuState());
                    }
            
                if (controls.ACCEPT)
                    {
                        #if windows
                        // Updating Discord Rich Presence
                        DiscordClient.changePresence("LOL LOOK I PRESSED ENTER AND IM IN THE CREDITS LOL", null);
                        #end
                    }
                /*if (controls.RIGHT)
                    {
                        remove(credsText);
                        remove(lolText);
                        remove(otherText);
    
                        add(coolText);
                        add(otherSext);
             
                    }
                    
                if (controls.LEFT)
                    {
                        add(credsText);
                        add(lolText);
                        add(otherText);
    
                        remove(coolText);
                        remove(otherSext);
                    }
                if (FlxG.keys.justPressed.NINE)
                    {
                        fancyOpenURL("https://cdn.discordapp.com/attachments/859479645467574285/869582361136869416/pico_spin.gif");
                    }
                // LOL this better not be in game 
                if (FlxG.keys.justPressed.EIGHT)
                    {
                        remove(bg);
                        bg = new FlxSprite().loadGraphic(Paths.image('hearmeout'));
                        bg.screenCenter(X);
                        bg.screenCenter(Y);
                        add(bg);
    
                        remove(coolText);
                        remove(otherSext);
                        remove(credsText);
                        remove(lolText);
                        remove(otherText);
    
                        new FlxTimer().start(3, function(tmr:FlxTimer)
                            {
                                #if windows
                                Sys.exit(0);
                                #end
                            });
                    }*/
        }
}