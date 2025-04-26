from selenium import webdriver

def abrir_browser_ie_com_edge(url, pathIEDriver):
    ieOptions = webdriver.IeOptions()
    ieOptions.add_additional_option("ie.edgechromium", True)
    ieOptions.add_additional_option("ie.edgepath", 'C:\\Program Files (x86)\\Microsoft\\Edge\\Application\\msedge.exe')
    ieOptions.persistent_hover = True
    ieOptions.ignore_zoom_level = True
    ieOptions.require_window_focus = True
    ieOptions.set_capability("ignoreProtectedModeSettings", True)
    driver = webdriver.Ie(pathIEDriver, options=ieOptions)
    driver.maximize_window()
    driver.get(url)