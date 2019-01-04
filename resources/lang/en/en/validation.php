<?php

return [

    /*
    |--------------------------------------------------------------------------
    | Validation Language Lines
    |--------------------------------------------------------------------------
    |
    | The following language lines contain the default error messages used by
    | the validator class. Some of these rules have multiple versions such
    | as the size rules. Feel free to tweak each of these messages here.
    |
    */

    'accepted'             => ' :attribute kabul edilmelidir.',
    'active_url'           => ' :attribute geçerli bir URL değil.',
    'after'                => ' :attribute şu tarihten sonra bir tarih olmalıdır :date.',
    'after_or_equal'       => ' :attribute şu tarihten sonra yada ona eşit bir tarih olmalıdır :date.',
    'alpha'                => ' :attribute yalnızca harf içerebilir.',
    'alpha_dash'           => ' :attribute yalnızca harfler, sayılar, kısa çizgiler ve alt çizgiler içerebilir.',
    'alpha_num'            => ' :attribute yalnızca harfleri ve sayıları içerebilir.',
    'array'                => ' :attribute bir dizi olmalıdır.',
    'before'               => ' :attribute önce bir tarih olmalıdır :date.',
    'before_or_equal'      => ' :attribute şu tarihten önce veya ona eşit bir tarih olmalıdır :date.',
    'between'              => [
        'numeric' => ' :attribute minimum ve maksimum arasında olmalıdır :min ve :max.',
        'file'    => ' :attribute minimum ve maksimum kilobayt arasında olmalıdır :min ve :max kilobytes.',
        'string'  => ' :attribute minimum ve maksimum karakterleri arasında olmalıdır :min ve :max characters.',
        'array'   => ' :attribute minimum ve maksimum elemanları arasında olmalıdır :min ve :max items.',
    ],
    'boolean'              => ' :attribute alan doğru ve yanlış olmalıdır.',
    'confirmed'            => ' :attribute onay uyuşmuyor.',
    'date'                 => ' :attribute geçerli bir tarih değil.',
    'date_format'          => ' :attribute biçim eşleşmiyor :format.',
    'different'            => ' :attribute ve :other farklı olmalıdır.',
    'digits'               => ' :attribute basamak basamak olmalıdır :digits digits.',
    'digits_between'       => ' :attribute minimum ve maksimum hane arasında olmalıdır :min and :max digits.',
    'dimensions'           => ' :attribute geçersiz resim boyutlarına sahiptir.',
    'distinct'             => ' :attribute alan yinelenen bir değere sahiptir.',
    'email'                => ' :attribute geçerli bir e-posta adresi olmalıdır.',
    'exists'               => ' Seçili Olan :attribute geçersizdir.',
    'file'                 => ' :attribute bir dosya olmalıdır.',
    'filled'               => ' :attribute alanın bir değeri olmalıdır.',
    'gt'                   => [
        'numeric' => ' :attribute şundan büyük olmalıdır :value.',
        'file'    => ' :attribute şu değerden büyük olmalıdır :value kilobytes.',
        'string'  => ' :attribute şu değerden büyük olmalıdır :value characters.',
        'array'   => ' :attribute şunlardan daha fazlasına sahip olmalıdır :value items.',
    ],
    'gte'                  => [
        'numeric' => ' :attribute eşit veya değerden büyük olmalıdır :value.',
        'file'    => ' :attribute şu değerden büyük veya eşit olmalıdır :value kilobytes.',
        'string'  => ' :attribute eşit veya daha büyük olmalıdır :value characters.',
        'array'   => ' :attribute , :value içerem değerler veya daha fazlasına sahip olmalıdır.',
    ],
    'image'                => ' :attribute resim olmalıdır.',
    'in'                   => ' Seçili olan :attribute geçersizdir.',
    'in_array'             => ' :attribute , :other bu alanda mevcut değildir.',
    'integer'              => ' :attribute bir tam sayı olmalıdır.',
    'ip'                   => ' :attribute geçerli bir IP adresi olmalıdır.',
    'ipv4'                 => ' :attribute geçerli bir IPv4 adresi olmalıdır.',
    'ipv6'                 => ' :attribute geçerli bir IPv6 adresi olmalıdır.',
    'json'                 => ' :attribute geçerli bir JSON dizgesi olmalıdır.',
    'lt'                   => [
        'numeric' => ' :attribute şu değerden küçük olmalıdır :value.',
        'file'    => ' :attribute şu değerden küçük olmalıdır :value kilobytes.',
        'string'  => ' :attribute şundan küçük olmalıdır :value characters.',
        'array'   => ' :attribute şundan küçük olmalıdır :value items.',
    ],
    'lte'                  => [
        'numeric' => ' :attribute küçük veya eşit olmalıdır :value.',
        'file'    => ' :attribute küçük veya eşit olmalıdır :value kilobytes.',
        'string'  => ' :attribute küçük veya eşit olmalıdır :value characters.',
        'array'   => ' :attribute şunlardan daha fazla olmalıdır :value items.',
    ],
    'max'                  => [
        'numeric' => ' :attribute şundan büyük olamaz :max.',
        'file'    => ' :attribute şundan büyük olamaz :max kilobytes.',
        'string'  => ' :attribute şundan büyük olamaz :max characters.',
        'array'   => ' :attribute daha fazlası olmayabilir :max items.',
    ],
    'mimes'                => ' :attribute bir tür dosya olmalıdır :values.',
    'mimetypes'            => ' :attribute bir tür dosya olmalıdır :values.',
    'min'                  => [
        'numeric' => ' :attribute en az olmalıdır :min.',
        'file'    => ' :attribute en az kilobayt olmalıdır :min kilobytes.',
        'string'  => ' :attribute en az karakter olmalıdır :min characters.',
        'array'   => ' :attribute en az öğeleri olmalıdır :min items.',
    ],
    'not_in'               => ' Seçili olan :attribute özellik geçersizdir.',
    'not_regex'            => ' :attribute formatı geçersizdir.',
    'numeric'              => ' :attribute bir sayı olmalıdır.',
    'present'              => ' :attribute alan mevcut olmalıdır.',
    'regex'                => ' :attribute formatı geçersizdir.',
    'required'             => ' :attribute alan zorunludur.',
    'required_if'          => ' :attribute alanda şu durumlarda gereklidir :other is :value.',
    'required_unless'      => ' :attribute alanda değerler olmadıkça zorunludur :other is in :values.',
    'required_with'        => ' :attribute alanda değerler mevcut olduğunda gereklidir :values is present.',
    'required_with_all'    => ' :attribute alanda değerler mevcut olduğunda gereklidir :values is present.',
    'required_without'     => ' :attribute alanda değerler mevcut olmadığında gereklidir :values is not present.',
    'required_without_all' => ' :attribute alanda değerler mevcut olmadığında zorunludur :values are present.',
    'same'                 => ' :attribute ve :other aynı olmalıdır.',
    'size'                 => [
        'numeric' => ' :attribute , şu boyutta olmalıdır :size.',
        'file'    => ' :attribute , şu boyutta olmalıdır :size kilobytes.',
        'string'  => ' :attribute , şu karakterler olmalıdır :size characters.',
        'array'   => ' :attribute , boyut öğelerini içermelidir :size items.',
    ],
    'string'               => ' :attribute bir dize olmalıdır.',
    'timezone'             => ' :attribute geçerli bir bölge olmalıdır.',
    'unique'               => ' :attribute zaten alınmıştır.',
    'uploaded'             => ' :attribute yüklenemedi.',
    'url'                  => ' :attribute formatı geçersizdir.',

    /*
    |--------------------------------------------------------------------------
    | Custom Validation Language Lines
    |--------------------------------------------------------------------------
    |
    | Here you may specify custom validation messages for attributes using the
    | convention "attribute.rule" to name the lines. This makes it quick to
    | specify a specific custom language line for a given attribute rule.
    |
    */

    'custom' => [
        'attribute-name' => [
            'rule-name' => 'custom-message',
        ],
    ],

    /*
    |--------------------------------------------------------------------------
    | Custom Validation Attributes
    |--------------------------------------------------------------------------
    |
    | The following language lines are used to swap attribute place-holders
    | with something more reader friendly such as E-Mail Address instead
    | of "email". This simply helps us make messages a little cleaner.
    |
    */

    'attributes' => [],

];
