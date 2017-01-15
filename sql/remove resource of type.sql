update Ids set MostRecent = null where ResourceTypeKey = 108
delete from SubscriptionQueue where ResourceKey in (Select ResourceKey from Ids where ResourceTypeKey = 108)
delete from NotificationQueue where SubscriptionKey in (Select ResourceKey from Ids where ResourceTypeKey = 108)
delete from NotificationQueue where ResourceVersionKey in (Select ResourceVersionKey from Versions where ResourceKey in (Select ResourceKey from Ids where ResourceTypeKey = 108))
delete from Versions where ResourceKey in (Select ResourceKey from Ids where ResourceTypeKey = 108)
update IndexEntries set Target = null where Target in (Select ResourceKey from Ids where ResourceTypeKey = 108)
delete from IndexEntries where ResourceKey in (Select ResourceKey from Ids where ResourceTypeKey = 108)
delete from Ids where ResourceTypeKey = 108


