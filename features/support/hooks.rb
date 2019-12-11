Before do |scenario|
    puts scenario.name
    #global variable to reference the 'world' object
    $world = self
end

After do |scenro|
    if scenro.failed?
        resultFileName = Time.now.strftime("failshot__%d_%m_%Y__%H_%M_%S")+".png"
        save_screenshot("./results/" + resultFileName)
        #put screenshot into html results file
        embed "./results/" + resultFileName, "image/png"
    end

    #stop everything if we get a fail:
    Cucumber.wants_to_quit = true if scenro.failed?
end