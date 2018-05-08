.class public Lcom/google/android/apps/nexuslauncher/reflection/b/g;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final Be:Lcom/android/launcher3/compat/UserManagerCompat;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    invoke-static {p1}, Lcom/android/launcher3/compat/UserManagerCompat;->getInstance(Landroid/content/Context;)Lcom/android/launcher3/compat/UserManagerCompat;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/apps/nexuslauncher/reflection/b/g;->Be:Lcom/android/launcher3/compat/UserManagerCompat;

    .line 26
    return-void
.end method

.method private a(Ljava/lang/String;Ljava/util/Map;)Z
    .locals 4

    .line 55
    sget-object v0, Lcom/google/android/apps/nexuslauncher/reflection/i;->Bn:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p1

    .line 56
    invoke-virtual {p1}, Ljava/util/regex/Matcher;->find()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    .line 57
    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object p1

    .line 58
    if-eqz p1, :cond_3

    .line 59
    invoke-interface {p2, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 60
    invoke-interface {p2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    return p1

    .line 64
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/reflection/b/g;->Be:Lcom/android/launcher3/compat/UserManagerCompat;

    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/android/launcher3/compat/UserManagerCompat;->getUserForSerialNumber(J)Landroid/os/UserHandle;

    move-result-object v0

    .line 65
    if-nez v0, :cond_1

    .line 66
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-interface {p2, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 67
    return v1

    .line 72
    :cond_1
    nop

    .line 73
    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/os/UserHandle;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/google/android/apps/nexuslauncher/reflection/b/g;->Be:Lcom/android/launcher3/compat/UserManagerCompat;

    .line 74
    invoke-virtual {v2, v0}, Lcom/android/launcher3/compat/UserManagerCompat;->isQuietModeEnabled(Landroid/os/UserHandle;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v1, 0x1

    nop

    .line 75
    :cond_2
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-interface {p2, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 76
    return v1

    .line 69
    :catch_0
    move-exception v0

    .line 70
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-interface {p2, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 71
    return v1

    .line 79
    :cond_3
    return v1
.end method


# virtual methods
.method public final a(Ljava/util/List;Ljava/util/List;)V
    .locals 3

    .line 35
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x18

    if-lt v0, v1, :cond_2

    .line 36
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 37
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    .line 38
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 39
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/research/reflection/predictor/m;

    .line 40
    iget-object v2, v1, Lcom/google/research/reflection/predictor/m;->sc:Ljava/lang/String;

    invoke-direct {p0, v2, v0}, Lcom/google/android/apps/nexuslauncher/reflection/b/g;->a(Ljava/lang/String;Ljava/util/Map;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 41
    if-eqz p2, :cond_0

    .line 42
    invoke-interface {p2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 44
    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->remove()V

    .line 46
    :cond_1
    goto :goto_0

    .line 48
    :cond_2
    return-void
.end method
