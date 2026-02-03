import lume from "lume/mod.ts";
import date from "lume/plugins/date.ts";
import icons from "lume/plugins/icons.ts";
import googleFonts from "lume/plugins/google_fonts.ts";

const site = lume({
    src: "./src",
    location: new URL("https://tiktorchic18.github.io"),
});

site.add("styles");

site.use(date());
site.use(icons());
site.use(googleFonts({
    cssFile: "styles/fonts.css",
    fonts: {
        "Noto Sans": "https://fonts.google.com/share?selection.family=Noto+Sans:ital,wght@0,100..900;1,100..900",
        "Noto Sans Display": "https://fonts.google.com/share?selection.family=Noto+Sans+Display:ital,wght@0,100..900;1,100..900",
        "Noto Sans Mono": "https://fonts.google.com/share?selection.family=Noto+Sans+Mono:wght@100..900",
        "Noto Sans Symbols": "https://fonts.google.com/share?selection.family=Noto+Sans+Symbols:wght@100..900",
        "Noto Serif": "https://fonts.google.com/share?selection.family=Noto+Serif:ital,wght@0,100..900;1,100..900",
        "Noto Serif Display": "https://fonts.google.com/share?selection.family=Noto+Serif+Display:ital,wght@0,100..900;1,100..900"
    },
}))

export default site;
