package sql.mssql

import future.keywords.if
import future.keywords.contains

deny contains msg if {
    some i
    changeset := input.databaseChangeLog[i].changeSet
    changeset.author == ""
    msg := sprintf("Changeset id '%s' has empty author. Author is mandatory", [changeset.id])
}

deny contains msg if {
    some i
    changeset := input.databaseChangeLog[i].changeSet
    not changeset.author == ""
    msg := sprintf("Changeset id '%s' is missing author attribute. Author is mandatory", [changeset.id])
}

deny contains msg if {
    input.sql
    regex.match("(?i)DELETE\\s+(FROM\\s+)?(\\[?\\w+\\]?\\.)?\\[?\\w+\\]?",input.sql)
    not regex.match("(?i)WHERE",input.sql)
    msg := "DELETE without WHERE detected"
}

deny contains msg if {
    input.sql
    regex.match("(?i)UPDATE\\s+(\\[?\\w+\\]?\\.)?\\[?\\w+\\]?", input.sql)
    not regex.match("(?i)WHERE", input.sql)
    msg := "UPDATE without WHERE detected"
}