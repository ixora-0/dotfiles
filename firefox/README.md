# Firefox configs

### ‼️ Fonts requirement
These custom settings assume the [Iosevka font](https://github.com/be5invis/Iosevka) is installed on the system. This font is used because of its narrow width, which is great for tabs that have long names. If you prefer to not use this font, please edit the relevant sections in `userChrome.css` and Sidebery's style settings.

#  Installation
## 1. Custom CSS
- Have [Firefox](https://www.mozilla.org/en-US/firefox/new/) installed.
- Open your currently active profile folder: go too `about:profiles`, locate currently active profile and click **Open Folder** in the **Root Directory** section
- Create a new folder named `chrome` in this directory.
- Copy the contents from the file `chrome/userChrome.css` into a new file named `userChrome.css` within the `chrome` folder.
- In address bar,  type`about:config` and press **Enter**. Click the button accepting the risk.

## 2. Custom `user.js`
This uses [Betterfox](https://github.com/yokoffing/Betterfox) with some overrides. To install, go to profile's root directory like earlier and copy or download and move file `user.js` into the folder.
>‼️This is an an opinionated preference list, see [here](https://github.com/yokoffing/Betterfox/wiki/Common-Overrides) for common adjustments. 

## 3. Sidebery settings
- Install the [Sidebery](https://addons.mozilla.org/en-US/firefox/addon/sidebery/) extension for Firefox.
- To apply all Sidebery settings, download `sidebery/sideberrySettings.json`, then locate the `Import addon data` button in Sidebery settings and select the downloaded file.
- To only apply the styles, go to **Styles editor** in Sidebery's settings and copy `sideberyStyles.css`to the text field.

## 4. (Optional) Additional extensions
- [Catppuccin, Mocha Lavender](https://github.com/catppuccin/firefox): Install [Firefox Color](https://addons.mozilla.org/en-US/firefox/addon/firefox-color/), then click [this link](https://color.firefox.com/?theme=XQAAAAJHBAAAAAAAAABBqYhm849SCicxcUcPX38oKRicm6da8pFtMcajvXaAE3RJ0F_F447xQs-L1kFlGgDKq4IIvWciiy4upusW7OvXIRinrLrwLvjXB37kvhN5ElayHo02fx3o8RrDShIhRpNiQMOdww5V2sCMLAfehhpWbjL_1RPuSDS6JMrP5SMm3V5s8DPdjrylB8odQkBKx3hwS8DfSgUd_K1gnYDiqF6FLqjZ1i5o2Ag7ndcuIMtTOff0Mv_AUAr9gmCgTwJLuHS5akRaMkSVVO8YgQjswELYw-q6z3M9DY23nuubC_GQIUqlw0_94uTV6vwegBVDkZbRRpVsBlfXUf_GqVF9q79Pr6uBA49roImTVMPyDZ9TZWf4oGlebH55k7lGonhR7tIVq6T0EitalyQmofr7ZRrkD9AZTe2f1aJuLnVsX_37dxUN2Qzo48s6AGZ7O1x-eVU1x4fGwGN3uMKhlk7umStxFC_xhSJTiVloH7_g2XYIb96FY63jjMAnWH3NlYewHQpDH4WEe-AcSxUy9IkyEnirYFd0aPe_x62ahv3L4HEH_8pylyA).
- [uBlock Origin](https://addons.mozilla.org/en-US/firefox/addon/ublock-origin/)
- [TabSearch](https://addons.mozilla.org/en-US/firefox/addon/tab_search/)
- [Undo Close Tab](https://addons.mozilla.org/en-US/firefox/addon/undoclosetabbutton/)
- [Startpage search engine](https://addons.mozilla.org/en-US/firefox/addon/startpage-private-search)
- [Simple Translate](https://addons.mozilla.org/en-US/firefox/addon/startpage-private-search/)
- [Bitwarden](https://addons.mozilla.org/en-US/firefox/addon/bitwarden-password-manager/)

## 5. Customizations
Review `chrome/userChrome.css` and `sideberyStyles.css` to see what each section does. Simply delete/comment styles that you don't like. For `user.js`, also see [Betterfox](https://github.com/yokoffing/Betterfox) for more details about the settings.
