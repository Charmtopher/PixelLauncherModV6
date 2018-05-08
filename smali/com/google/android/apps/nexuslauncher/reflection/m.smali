.class public Lcom/google/android/apps/nexuslauncher/reflection/m;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static BN:Z

.field private static TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 30
    const-string v0, "Reflection.SnsrFactory"

    sput-object v0, Lcom/google/android/apps/nexuslauncher/reflection/m;->TAG:Ljava/lang/String;

    .line 31
    const/4 v0, 0x0

    sput-boolean v0, Lcom/google/android/apps/nexuslauncher/reflection/m;->BN:Z

    return-void
.end method

.method public static a(Landroid/content/Context;Ljava/util/List;Lcom/google/research/reflection/c/d;Ljava/util/List;)V
    .locals 4

    .line 38
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 39
    sget-boolean p1, Lcom/google/android/apps/nexuslauncher/reflection/m;->BN:Z

    if-eqz p1, :cond_0

    .line 40
    new-instance p1, Lcom/google/android/apps/nexuslauncher/reflection/n;

    invoke-direct {p1}, Lcom/google/android/apps/nexuslauncher/reflection/n;-><init>()V

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 54
    :cond_0
    new-instance p1, Lcom/google/android/gms/common/api/s;

    invoke-direct {p1, p0}, Lcom/google/android/gms/common/api/s;-><init>(Landroid/content/Context;)V

    sget-object v1, Lcom/google/android/gms/location/d;->Hl:Lcom/google/android/gms/common/api/a;

    invoke-virtual {p1, v1}, Lcom/google/android/gms/common/api/s;->a(Lcom/google/android/gms/common/api/a;)Lcom/google/android/gms/common/api/s;

    sget-object v1, Lcom/google/android/gms/location/places/j;->Zc:Lcom/google/android/gms/common/api/a;

    invoke-virtual {p1, v1}, Lcom/google/android/gms/common/api/s;->a(Lcom/google/android/gms/common/api/a;)Lcom/google/android/gms/common/api/s;

    sget-object v1, Lcom/google/android/gms/location/places/j;->Zb:Lcom/google/android/gms/common/api/a;

    invoke-virtual {p1, v1}, Lcom/google/android/gms/common/api/s;->a(Lcom/google/android/gms/common/api/a;)Lcom/google/android/gms/common/api/s;

    const-string v1, "<<default account>>"

    new-instance v2, Landroid/accounts/Account;

    const-string v3, "com.google"

    invoke-direct {v2, v1, v3}, Landroid/accounts/Account;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v2, p1, Lcom/google/android/gms/common/api/s;->GT:Landroid/accounts/Account;

    invoke-virtual {p1}, Lcom/google/android/gms/common/api/s;->fx()Lcom/google/android/gms/common/api/r;

    move-result-object p1

    .line 55
    new-instance v1, Lcom/google/android/apps/nexuslauncher/reflection/o;

    invoke-direct {v1, p1}, Lcom/google/android/apps/nexuslauncher/reflection/o;-><init>(Lcom/google/android/gms/common/api/r;)V

    invoke-interface {p3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 63
    invoke-virtual {p1}, Lcom/google/android/gms/common/api/r;->connect()V

    .line 74
    new-instance v1, Lcom/google/android/apps/nexuslauncher/reflection/f/f;

    sget-object v2, Lcom/google/android/gms/location/places/j;->Zd:Lcom/google/android/gms/location/places/b;

    invoke-direct {v1, p1, v2, p0}, Lcom/google/android/apps/nexuslauncher/reflection/f/f;-><init>(Lcom/google/android/gms/common/api/r;Lcom/google/android/gms/location/places/b;Landroid/content/Context;)V

    .line 76
    invoke-virtual {v1, p2}, Lcom/google/android/apps/nexuslauncher/reflection/f/f;->a(Lcom/google/research/reflection/c/c;)Lcom/google/research/reflection/c/a;

    .line 77
    invoke-virtual {p2, v1}, Lcom/google/research/reflection/c/d;->a(Lcom/google/research/reflection/c/a;)V

    .line 78
    invoke-interface {p3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 79
    sget-boolean p1, Lcom/google/android/apps/nexuslauncher/reflection/m;->BN:Z

    if-eqz p1, :cond_1

    .line 80
    sget-object p1, Lcom/google/android/apps/nexuslauncher/reflection/m;->TAG:Ljava/lang/String;

    const-string v1, "Registered PublicPlaceReceiver"

    invoke-static {p1, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 84
    :cond_1
    new-instance p1, Lcom/google/android/apps/nexuslauncher/reflection/f/b;

    invoke-direct {p1, p0}, Lcom/google/android/apps/nexuslauncher/reflection/f/b;-><init>(Landroid/content/Context;)V

    .line 86
    invoke-virtual {p1, p2}, Lcom/google/android/apps/nexuslauncher/reflection/f/b;->a(Lcom/google/research/reflection/c/c;)Lcom/google/research/reflection/c/a;

    .line 87
    invoke-virtual {p2, p1}, Lcom/google/research/reflection/c/d;->a(Lcom/google/research/reflection/c/a;)V

    .line 93
    new-instance p1, Lcom/google/android/apps/nexuslauncher/reflection/f/a;

    invoke-direct {p1, p0}, Lcom/google/android/apps/nexuslauncher/reflection/f/a;-><init>(Landroid/content/Context;)V

    .line 95
    invoke-static {p1, v0}, Lcom/google/android/apps/nexuslauncher/reflection/m;->a(Lcom/google/research/reflection/c/a;Ljava/util/List;)V

    .line 96
    invoke-interface {p3, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 97
    sget-boolean p1, Lcom/google/android/apps/nexuslauncher/reflection/m;->BN:Z

    if-eqz p1, :cond_2

    .line 98
    sget-object p1, Lcom/google/android/apps/nexuslauncher/reflection/m;->TAG:Ljava/lang/String;

    const-string p2, "Registered HeadsetPlugReceiver"

    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 102
    :cond_2
    invoke-static {p0}, Lcom/google/android/apps/nexuslauncher/reflection/f/j;->n(Landroid/content/Context;)Lcom/google/android/apps/nexuslauncher/reflection/f/j;

    move-result-object p1

    .line 103
    if-eqz p1, :cond_3

    .line 104
    invoke-static {p1, v0}, Lcom/google/android/apps/nexuslauncher/reflection/m;->a(Lcom/google/research/reflection/c/a;Ljava/util/List;)V

    .line 105
    sget-boolean p1, Lcom/google/android/apps/nexuslauncher/reflection/m;->BN:Z

    if-eqz p1, :cond_3

    .line 106
    sget-object p1, Lcom/google/android/apps/nexuslauncher/reflection/m;->TAG:Ljava/lang/String;

    const-string p2, "UsageEventSensor added."

    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 111
    :cond_3
    new-instance p1, Lcom/google/android/apps/nexuslauncher/reflection/f/d;

    invoke-direct {p1, p0}, Lcom/google/android/apps/nexuslauncher/reflection/f/d;-><init>(Landroid/content/Context;)V

    .line 112
    invoke-static {p1, v0}, Lcom/google/android/apps/nexuslauncher/reflection/m;->a(Lcom/google/research/reflection/c/a;Ljava/util/List;)V

    .line 113
    invoke-interface {p3, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 114
    invoke-static {p1}, Lcom/android/launcher3/notification/NotificationListener;->setStatusBarNotificationsChangedListener(Lcom/android/launcher3/notification/NotificationListener$StatusBarNotificationsChangedListener;)V

    .line 115
    sget-boolean p0, Lcom/google/android/apps/nexuslauncher/reflection/m;->BN:Z

    if-eqz p0, :cond_4

    .line 116
    sget-object p0, Lcom/google/android/apps/nexuslauncher/reflection/m;->TAG:Ljava/lang/String;

    const-string p1, "NotificationSensor added."

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 120
    :cond_4
    sget-boolean p0, Lcom/google/android/apps/nexuslauncher/reflection/m;->BN:Z

    if-eqz p0, :cond_5

    .line 121
    sget-object p0, Lcom/google/android/apps/nexuslauncher/reflection/m;->TAG:Ljava/lang/String;

    const-string p1, "Sensors made and connected."

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 123
    :cond_5
    return-void
.end method

.method private static a(Lcom/google/research/reflection/c/a;Ljava/util/List;)V
    .locals 1

    .line 126
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/research/reflection/c/c;

    .line 127
    invoke-interface {p0, v0}, Lcom/google/research/reflection/c/a;->a(Lcom/google/research/reflection/c/c;)Lcom/google/research/reflection/c/a;

    .line 128
    goto :goto_0

    .line 129
    :cond_0
    return-void
.end method
