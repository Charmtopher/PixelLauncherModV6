.class public Lcom/google/android/apps/nexuslauncher/reflection/a/d;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Lcom/google/research/reflection/signal/ReflectionEvent$ReflectionEventType;Ljava/lang/String;Ljava/lang/String;JLcom/google/research/reflection/signal/b;)Lcom/google/android/apps/nexuslauncher/reflection/g/c;
    .locals 7

    .line 122
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 123
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    .line 124
    new-instance v3, Lcom/google/android/apps/nexuslauncher/reflection/g/c;

    invoke-direct {v3}, Lcom/google/android/apps/nexuslauncher/reflection/g/c;-><init>()V

    .line 126
    new-instance v4, Lcom/google/android/apps/nexuslauncher/reflection/g/h;

    invoke-direct {v4}, Lcom/google/android/apps/nexuslauncher/reflection/g/h;-><init>()V

    .line 128
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Lcom/google/android/apps/nexuslauncher/reflection/g/h;->h(J)Lcom/google/research/reflection/signal/d;

    .line 129
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeZone()Ljava/util/TimeZone;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/google/android/apps/nexuslauncher/reflection/g/h;->r(Ljava/lang/String;)Lcom/google/research/reflection/signal/d;

    .line 130
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeZone()Ljava/util/TimeZone;

    move-result-object v0

    iget-object v5, v4, Lcom/google/android/apps/nexuslauncher/reflection/g/h;->Er:Lcom/google/android/apps/nexuslauncher/reflection/e/m;

    iget-wide v5, v5, Lcom/google/android/apps/nexuslauncher/reflection/e/m;->timestamp:J

    invoke-virtual {v0, v5, v6}, Ljava/util/TimeZone;->getOffset(J)I

    move-result v0

    int-to-long v5, v0

    invoke-virtual {v4, v5, v6}, Lcom/google/android/apps/nexuslauncher/reflection/g/h;->k(J)Lcom/google/research/reflection/signal/d;

    .line 131
    invoke-virtual {v4, p3, p4}, Lcom/google/android/apps/nexuslauncher/reflection/g/h;->i(J)Lcom/google/research/reflection/signal/d;

    .line 132
    invoke-virtual {v4, v1, v2}, Lcom/google/android/apps/nexuslauncher/reflection/g/h;->j(J)Lcom/google/research/reflection/signal/d;

    .line 133
    invoke-virtual {v3, v4}, Lcom/google/android/apps/nexuslauncher/reflection/g/c;->a(Lcom/google/research/reflection/signal/d;)Lcom/google/research/reflection/signal/ReflectionEvent;

    .line 134
    invoke-virtual {v3, p1}, Lcom/google/android/apps/nexuslauncher/reflection/g/c;->p(Ljava/lang/String;)Lcom/google/research/reflection/signal/ReflectionEvent;

    .line 135
    const/4 p1, 0x2

    new-array p1, p1, [Ljava/lang/String;

    const-string p3, "GEL"

    const/4 p4, 0x0

    aput-object p3, p1, p4

    const/4 p3, 0x1

    aput-object p2, p1, p3

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-virtual {v3, p1}, Lcom/google/android/apps/nexuslauncher/reflection/g/c;->l(Ljava/util/List;)Lcom/google/research/reflection/signal/ReflectionEvent;

    .line 136
    const-string p1, "GEL"

    invoke-virtual {v3, p1}, Lcom/google/android/apps/nexuslauncher/reflection/g/c;->q(Ljava/lang/String;)Lcom/google/android/apps/nexuslauncher/reflection/g/c;

    .line 137
    if-nez p0, :cond_0

    .line 138
    sget-object p0, Lcom/google/research/reflection/signal/ReflectionEvent$ReflectionEventType;->ahZ:Lcom/google/research/reflection/signal/ReflectionEvent$ReflectionEventType;

    invoke-virtual {v3, p0}, Lcom/google/android/apps/nexuslauncher/reflection/g/c;->a(Lcom/google/research/reflection/signal/ReflectionEvent$ReflectionEventType;)Lcom/google/research/reflection/signal/ReflectionEvent;

    goto :goto_0

    .line 140
    :cond_0
    invoke-virtual {v3, p0}, Lcom/google/android/apps/nexuslauncher/reflection/g/c;->a(Lcom/google/research/reflection/signal/ReflectionEvent$ReflectionEventType;)Lcom/google/research/reflection/signal/ReflectionEvent;

    .line 142
    :goto_0
    if-eqz p5, :cond_1

    .line 143
    invoke-virtual {v3, p5}, Lcom/google/android/apps/nexuslauncher/reflection/g/c;->a(Lcom/google/research/reflection/signal/b;)Lcom/google/research/reflection/signal/ReflectionEvent;

    .line 145
    :cond_1
    return-object v3
.end method

.method public static a(Landroid/content/ComponentName;JLandroid/content/Context;)Ljava/lang/String;
    .locals 2

    .line 156
    nop

    .line 157
    invoke-static {p0}, Lcom/google/android/apps/nexuslauncher/reflection/i;->a(Landroid/content/ComponentName;)Ljava/lang/String;

    move-result-object p0

    .line 158
    invoke-static {p3}, Lcom/android/launcher3/compat/UserManagerCompat;->getInstance(Landroid/content/Context;)Lcom/android/launcher3/compat/UserManagerCompat;

    move-result-object p3

    .line 159
    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object v0

    invoke-virtual {p3, v0}, Lcom/android/launcher3/compat/UserManagerCompat;->getSerialNumberForUser(Landroid/os/UserHandle;)J

    move-result-wide v0

    .line 160
    cmp-long p3, p1, v0

    if-eqz p3, :cond_0

    .line 161
    const-string p3, "%s#%d"

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const/4 p0, 0x1

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    aput-object p1, v0, p0

    invoke-static {p3, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    .line 163
    :cond_0
    return-object p0
.end method

.method public static a(Ljava/util/Map;)[Lcom/google/android/apps/nexuslauncher/reflection/e/t;
    .locals 5

    .line 87
    invoke-interface {p0}, Ljava/util/Map;->size()I

    move-result v0

    new-array v0, v0, [Lcom/google/android/apps/nexuslauncher/reflection/e/t;

    .line 88
    nop

    .line 89
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 90
    new-instance v3, Lcom/google/android/apps/nexuslauncher/reflection/e/t;

    invoke-direct {v3}, Lcom/google/android/apps/nexuslauncher/reflection/e/t;-><init>()V

    .line 91
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    iput v4, v3, Lcom/google/android/apps/nexuslauncher/reflection/e/t;->id:I

    .line 92
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    iput-object v2, v3, Lcom/google/android/apps/nexuslauncher/reflection/e/t;->name:Ljava/lang/String;

    .line 93
    add-int/lit8 v2, v1, 0x1

    aput-object v3, v0, v1

    .line 94
    nop

    .line 89
    move v1, v2

    goto :goto_0

    .line 95
    :cond_0
    return-object v0
.end method

.method public static b(Ljava/util/Map;)[Lcom/google/android/apps/nexuslauncher/reflection/e/o;
    .locals 6

    .line 105
    invoke-interface {p0}, Ljava/util/Map;->size()I

    move-result v0

    new-array v0, v0, [Lcom/google/android/apps/nexuslauncher/reflection/e/o;

    .line 106
    nop

    .line 107
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 108
    new-instance v3, Lcom/google/android/apps/nexuslauncher/reflection/e/o;

    invoke-direct {v3}, Lcom/google/android/apps/nexuslauncher/reflection/e/o;-><init>()V

    .line 109
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    iput v4, v3, Lcom/google/android/apps/nexuslauncher/reflection/e/o;->key:I

    .line 110
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Number;

    invoke-virtual {v2}, Ljava/lang/Number;->longValue()J

    move-result-wide v4

    iput-wide v4, v3, Lcom/google/android/apps/nexuslauncher/reflection/e/o;->value:J

    .line 111
    add-int/lit8 v2, v1, 0x1

    aput-object v3, v0, v1

    .line 112
    nop

    .line 107
    move v1, v2

    goto :goto_0

    .line 113
    :cond_0
    return-object v0
.end method
