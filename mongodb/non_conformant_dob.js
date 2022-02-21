db.getCollection('CollectionName').find({
    field:{
    $regex:/^((?!\d{4}\-(0?[1-9]|1[012])\-(0?[1-9]|[12][0-9]|3[01])).)*$/
    }
})
// this example is for checking if the field follows yyyy-mm-dd
// ((?!"some regex").) is for finding values that don't fall into the regex
