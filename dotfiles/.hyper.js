module.exports = {
  config: {
    updateChannel: 'stable',
    fontSize: 16,
    fontFamily: '"Fira Code", monospace',
    fontWeight: 'normal',
    fontWeightBold: 'bold',
    lineHeight: 1,
    letterSpacing: 0,
    cursorColor: 'rgba(248,28,229,0.8)',
    cursorAccentColor: '#000',
    cursorShape: 'BEAM',
    cursorBlink: true,
    foregroundColor: '#fff',
    backgroundColor: '#000',
    selectionColor: 'rgba(248,28,229,0.3)',
    borderColor: '#333',
    css: '',
    termCSS: '',
    bell: false,
    showHamburgerMenu: 'true',
    showWindowControls: '',
    padding: '12px 14px',
    colors: {
      black: '#000000',
      red: '#C51E14',
      green: '#1DC121',
      yellow: '#C7C329',
      blue: '#0A2FC4',
      magenta: '#C839C5',
      cyan: '#20C5C6',
      white: '#C7C7C7',
      lightBlack: '#686868',
      lightRed: '#FD6F6B',
      lightGreen: '#67F86F',
      lightYellow: '#FFFA72',
      lightBlue: '#6A76FB',
      lightMagenta: '#FD7CFC',
      lightCyan: '#68FDFE',
      lightWhite: '#FFFFFF',
    },
    shell: 'zsh',
    shellArgs: ['--login'],
    env: {},
    bell: 'SOUND',
    copyOnSelect: false,
    defaultSSHApp: true,
    quickEdit: false,
    macOptionSelectionMode: 'vertical',
    webGLRenderer: true,
    /// TODO
    hyperTabsMove: {
      moveLeft: 'command+left',
    },
    StarWarsTheme: {
      character: 'emperor', // Define your favorite star wars character
      lightsaber: 'true', // Activate your theme's lightsaber mode
      unibody: 'false', // Define the color of the Hyper window header
      avatar: 'true' // Activate your theme's background avatar
    },
    poketab: 'true',
    unibody: 'false'
  },

  plugins: [
    "git-falcon9",
    "hypercwd",
    "hyperocean",
    "hyperpower",
    "hyperterm-tabs",
    "hyper-broadcast",
    "hyper-custom-touchbar",
    "hyper-opacity",
    "hyper-pane",
    "hyper-search",
    "hyper-spotify",
    "hyper-statusline",
    "hyper-tab-icons-plus",
    "verminal",

    /// DEPRECATED
    //  "hyper-star-wars",
    // "hyper-pokemon",
  ],

  localPlugins: [],

  keymaps: {},
};