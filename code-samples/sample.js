// ==UserScript==
// @name         Sample


(function() {
    'use strict';

    function countH1(nodelist) {
        var h1count = 0;
        for (var i of nodelist) {
            if (i.tagName === 'H1') {
                h1count += 1;
            }
        }
        return h1count;
    }

    function getTitles(body) {
        var b = body.querySelectorAll("h1, h2, h3, h4, h5, h6");
        if (b.length === 0) {
            throw new Error("Titles not found.");
        }
        else {
            return b
        }
    }

    (function waitForTinyMCE() {
        if (!toolbarExists()) {
            setTimeout(waitForTinyMCE, 1000);
        }
        else {
            insertButton();
            activateButton();
        }
    })();
})();
