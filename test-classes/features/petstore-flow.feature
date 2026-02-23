Feature: PetStore API Flow

  Background:
    * url baseUrl
    * def petId = java.lang.System.currentTimeMillis()
    * def originalName = 'Karate-Pet-' + petId
    * def updatedName = originalName + '-UPDATED'

    * def petPayload =
    """
    {
      "id": #(petId),
      "category": { "id": 1, "name": "dogs" },
      "name": #(originalName),
      "photoUrls": ["https://example.com/pet.jpg"],
      "tags": [{ "id": 10, "name": "karate" }],
      "status": "available"
    }
    """

  Scenario: Full API Flow

    # Create Pet
    Given path 'pet'
    And request petPayload
    When method post
    Then status 200
    And match response.id == petId

    # Get Pet by ID
    Given path 'pet', petId
    When method get
    Then status 200
    And match response.name == originalName

    # Update Pet
    * def updatePayload = response
    * set updatePayload.name = updatedName
    * set updatePayload.status = 'sold'

    Given path 'pet'
    And request updatePayload
    When method put
    Then status 200
    And match response.status == 'sold'

    # Find by Status
    Given path 'pet', 'findByStatus'
    And param status = 'sold'
    When method get
    Then status 200