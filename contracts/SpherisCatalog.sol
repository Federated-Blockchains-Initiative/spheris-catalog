pragma solidity ^0.4.11;

import "./core/DeveloperApplications.sol";
import "./core/Categories.sol";
import "./core/Owned.sol";


contract SpherisCatalog is DeveloperApplications, Categories, Owned {


    function addCategory(string _name, uint _parent, bool _visible) public onlyOwner {
        CategoriesList.push(Category(_name, _parent,_visible));
    }

    function SpherisCatalog() {
        CategoriesList.push(Category('root',0,false));
        CategoriesList.push(Category('Graphics',0,true));
        CategoriesList.push(Category('Audio',0,true));
        CategoriesList.push(Category('Games',0,true));
        CategoriesList.push(Category('Video',0,true));
        CategoriesList.push(Category('Productivity',0,false));
        CategoriesList.push(Category('Science',0,false));
        CategoriesList.push(Category('Internet',0,true));
        CategoriesList.push(Category('Personalization',0,true));

        ApplicationsList.push(Application(
            msg.sender,
            "Gimp",
            1,
            ApplicationPlatform.Linux,
            "http://browser.spheris.io/dl/gimp-2.8.22.tar.bz2",
            "Whether you are a graphic designer, photographer, illustrator, or scientist, GIMP provides you with sophisticated tools to get your job done. You can further enhance your productivity with GIMP thanks to many customization options and 3rd party plugins.",
            "http://browser.spheris.io/img/gimp.png"
        ));

        ApplicationsList.push(Application(
            msg.sender,
            "AIMP",
            2,
            ApplicationPlatform.Windows,
            "http://browser.spheris.io/dl/aimp_4.13.1897.exe",
            "AIMP is a freeware audio player for Windows, originally developed by Russian developer Artem Izmaylov. The first version of AIMP, dubbed 'AIMP Classic', was released on August 8, 2006. AIMP was initially based on the BASS audio library.",
            "http://browser.spheris.io/img/aimp.png"
        ));

        ApplicationsList.push(Application(
            msg.sender,
            "VLC",
            4,
            ApplicationPlatform.Windows,
            "http://browser.spheris.io/dl/vlc-2.2.6-win32.exe",
            "VLC media player is a free and open-source, portable and cross-platform media player and streaming media server written by the VideoLAN project.",
            "http://browser.spheris.io/img/vlc.png"
        ));

        ApplicationsList.push(Application(
            msg.sender,
            "IrfanView",
            1,
            ApplicationPlatform.Windows,
            "http://browser.spheris.io/dl/iview444_setup.exe",
            "IrfanView seeks to create unique, new and interesting features, unlike some other graphic viewers, whose whole 'creativity' is based on feature cloning, stealing of ideas and whole dialogs from ACDSee and/or IrfanView! (for example: XnView has been stealing/cloning features and whole dialogs from IrfanView, for 10+ years).",
            "http://browser.spheris.io/img/ifranview.png"
        ));

        ApplicationsList.push(Application(
            msg.sender,
            "DuckDuckGo",
            7,
            ApplicationPlatform.Android,
            "http://browser.spheris.io/dl/com.duckduckgo.mobile.android-3.1.1.apk",
            "DuckDuckGo is an Internet search engine that emphasizes protecting searchers' privacy and avoiding the filter bubble of personalized search results.",
            "http://browser.spheris.io/img/duckduckgo.png"
        ));

        ApplicationsList.push(Application(
            msg.sender,
            "Muzei Live Wallpaper",
            8,
            ApplicationPlatform.Android,
            "http://browser.spheris.io/dl/net.nurik.roman.muzei-2.3.3.apk",
            "Muzei is a live wallpaper that gently refreshes your home screen each day with famous works of art. It also recedes into the background, blurring and dimming artwork to keep your icons and widgets in the spotlight.",
            "http://browser.spheris.io/img/muzei.png"
        ));

        ApplicationsList.push(Application(
            msg.sender,
            "Freeciv",
            3,
            ApplicationPlatform.Windows,
            "http://browser.spheris.io/dl/Freeciv-2.5.9-win32-gtk2-setup.exe",
            "Freeciv is a single, and multiplayer, turn-based strategy game for workstations and personal computers inspired by the proprietary Sid Meier's Civilization series.",
            "http://browser.spheris.io/img/freeciv.png"
        ));
    }

}