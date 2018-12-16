kaela = User.create(username: "kaela", password: "password")
lorna = User.create(username: "lorna", password: "password")

kaela.medications.create(name: "protonix", dose: "20mg", refill_date: "Jan. 4, 2019", notes: "working well")
kaela.medications.create(name: "the chill one", dose: ".5mg", refill_date: "unknown", notes: "does the job")
kaela.medications.create(name: "any SSRI", dose: "100mg", refill_date: "n/a", notes: "no good don't do it")

lorna.medications.create(name: "zyrtec", dose: "whatever is normal", refill_date: "when it runs out", notes: "it's the one that works")
lorna.medications.create(name: "the chill one", dose: "2mg", refill_date: "n/a", notes: "it really works!")