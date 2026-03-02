import java.sql.*
import java.util.Properties

class Survey {
    fun run() {
        val credentials = Credentials()
        val connection = getConnection(credentials)

        val chosenWeights = mutableListOf<String>()

        // SURVEY KIEZEN
        println("Welke survey kies jij?")

        val surveysResult = connection.prepareStatement(
            "SELECT id, title FROM survey"
        ).executeQuery()

        while (surveysResult.next()) {
            val id = surveysResult.getInt("id")
            val title = surveysResult.getString("title")
            println("$id.$title")
        }

        var chosenSurveyId: Int? = null

        // SURVEY VALIDATIE
        while (chosenSurveyId == null) {
            print("Kies een survey: ")
            val inputName = readLine()!!

            val statement = connection.prepareStatement(
                "SELECT id FROM survey WHERE title = ?"
            )
            statement.setString(1, inputName)

            val result = statement.executeQuery()

            if (result.next()) {
                chosenSurveyId = result.getInt("id")
                println("Je koos survey: $inputName \n")
            } else {
                println("Bestaat niet. Typ exact 1 van de bovenstaande namen.\n")
            }
        }

        val surveyId = chosenSurveyId!!  // nu zeker geen null

        // PARTICIPANT AANMAKEN
        print("\nWat is je naam? ")
        val participantName = readLine()!!

        val participantId = createParticipant(connection, participantName)
        println("Laten we beginnen $participantName")

        // VRAGEN OPHALEN
        val questionsStmt = connection.prepareStatement(
            "SELECT id, question_text FROM questions WHERE survey_id = ?"
        )
        questionsStmt.setInt(1, surveyId)
        val questionsResult = questionsStmt.executeQuery()

        // VRAGEN LOOP
        while (questionsResult.next()) {
            val questionId = questionsResult.getInt("id")
            val qText = questionsResult.getString("question_text")

            println("\n$qText")

            // OPTIES OPHALEN
            val optionsStmt = connection.prepareStatement(
                "SELECT id, option_text, weight_value FROM options WHERE question_id = ?"
            )
            optionsStmt.setInt(1, questionId)
            val optionsResult = optionsStmt.executeQuery()

            val optionIds = mutableListOf<Int>()
            val optionTexts = mutableListOf<String>()
            val optionWeights = mutableListOf<String>()

            var counter = 1
            while (optionsResult.next()) {
                val optionId = optionsResult.getInt("id")
                val optionText = optionsResult.getString("option_text")
                val weight = optionsResult.getString("weight_value")

                println("$counter. $optionText")

                optionIds.add(optionId)
                optionTexts.add(optionText)
                optionWeights.add(weight)

                counter++
            }

            // INPUT CONTROLEREN
            var chosenIndex: Int
            while (true) {
                print("> ")
                val number = readLine()?.toIntOrNull()

                if (number != null && number in 1..optionIds.size) {
                    chosenIndex = number - 1
                    break
                }
                println("FOUT: kies een geldig nummer.")
            }

            // KEUZE VERWERKEN
            val selectedText = optionTexts[chosenIndex]
            val selectedWeight = optionWeights[chosenIndex]
            println("Je koos: $selectedText")

            chosenWeights.add(selectedWeight)

            // RESPONSE OPSLAAN
            saveResponse(connection, participantId, questionId, optionIds[chosenIndex])
        }

        // RESULTAAT BEREKENEN
        val finalCategory = chosenWeights
            .groupingBy { it }
            .eachCount()
            .maxByOrNull { it.value }
            ?.key

        // RESULTAAT TEKST
        val messages = mapOf(
            "action" to "Je bent een adrenaline-junkie!",
            "drama" to "Je houdt van emoties en diepe verhalen!",
            "sci-fi" to "Je bent een echte sci-fi dreamer!",
            "romance" to "Je gelooft in liefde!",
            "comedy" to "Je bent vrolijk en grappig!",
            "ferrari" to "Je bent een Ferrari-person: passie en stijl.",
            "lamborghini" to "Je bent een Lamborghini-person: luid en extreem.",
            "porsche" to "Je bent een Porsche-person: precisie en balans.",
            "bmw" to "Je bent een BMW-person: sportief en zelfverzekerd.",
            "mercedes" to "Je bent een Mercedes-person: luxe en comfort.",
            "audi" to "Je bent een Audi-person: strak en technologisch.",
            "mclaren" to "Je bent een McLaren-person: puur engineering.",
            "jdm" to "Je bent een JDM-person: fun en creatief.",
            "electric" to "Je bent future-minded en elektrisch."
        )

        println("\n${messages[finalCategory] ?: "Geen resultaat gevonden."}")
    }

    // DB CONNECTIE
    private fun getConnection(credentials: Credentials): Connection {
        val connectionProps = Properties()
        connectionProps["user"] = credentials.databaseUser
        connectionProps["password"] = credentials.databasePassword

        Class.forName("com.mysql.cj.jdbc.Driver").getDeclaredConstructor().newInstance()

        return DriverManager.getConnection(
            "jdbc:mysql://dt5.ehb.be:3306/${credentials.databaseName}",
            connectionProps
        )
    }

    // PARTICIPANT INSERT
    private fun createParticipant(connection: Connection, name: String): Int {
        val statement = connection.prepareStatement(
            "INSERT INTO participants (name) VALUES (?)",
            Statement.RETURN_GENERATED_KEYS
        )
        statement.setString(1, name)
        statement.executeUpdate()

        val keys = statement.generatedKeys
        keys.next()
        return keys.getInt(1)
    }

    // RESPONSE INSERT
    private fun saveResponse(connection: Connection, participantId: Int, questionId: Int, optionId: Int) {
        val statement = connection.prepareStatement(
            "INSERT INTO responses (participant_id, question_id, option_id) VALUES (?, ?, ?)"
        )
        statement.setInt(1, participantId)
        statement.setInt(2, questionId)
        statement.setInt(3, optionId)
        statement.executeUpdate()
    }
}
