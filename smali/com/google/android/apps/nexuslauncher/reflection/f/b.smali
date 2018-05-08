.class public Lcom/google/android/apps/nexuslauncher/reflection/f/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/research/reflection/c/a;


# instance fields
.field private final DI:Ljava/util/List;

.field protected DJ:Landroid/location/Location;

.field private final mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput-object p1, p0, Lcom/google/android/apps/nexuslauncher/reflection/f/b;->mContext:Landroid/content/Context;

    .line 37
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/google/android/apps/nexuslauncher/reflection/f/b;->DI:Ljava/util/List;

    .line 38
    return-void
.end method


# virtual methods
.method public final a(Lcom/google/research/reflection/c/c;)Lcom/google/research/reflection/c/a;
    .locals 1

    .line 42
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/reflection/f/b;->DI:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 43
    return-object p0
.end method

.method public final eo()V
    .locals 4

    .line 85
    :try_start_0
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/reflection/f/b;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.ACCESS_FINE_LOCATION"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/reflection/f/b;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/google/android/gms/location/d;->G(Landroid/content/Context;)Lcom/google/android/gms/location/b;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/location/t;

    invoke-direct {v1}, Lcom/google/android/gms/location/t;-><init>()V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/location/b;->a(Lcom/google/android/gms/internal/cn;)Lcom/google/android/gms/tasks/b;

    move-result-object v0

    new-instance v1, Lcom/google/android/apps/nexuslauncher/reflection/f/c;

    invoke-direct {v1, p0}, Lcom/google/android/apps/nexuslauncher/reflection/f/c;-><init>(Lcom/google/android/apps/nexuslauncher/reflection/f/b;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/tasks/b;->a(Lcom/google/android/gms/tasks/a;)Lcom/google/android/gms/tasks/b;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/apps/nexuslauncher/reflection/f/b;->DJ:Landroid/location/Location;

    :goto_0
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/reflection/f/b;->DJ:Landroid/location/Location;

    iput-object v0, p0, Lcom/google/android/apps/nexuslauncher/reflection/f/b;->DJ:Landroid/location/Location;

    .line 86
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/reflection/f/b;->DJ:Landroid/location/Location;

    if-eqz v0, :cond_1

    .line 87
    new-instance v0, Lcom/google/android/apps/nexuslauncher/reflection/g/d;

    invoke-direct {v0}, Lcom/google/android/apps/nexuslauncher/reflection/g/d;-><init>()V

    .line 88
    iget-object v1, p0, Lcom/google/android/apps/nexuslauncher/reflection/f/b;->DJ:Landroid/location/Location;

    invoke-virtual {v1}, Landroid/location/Location;->getTime()J

    move-result-wide v1

    iget-object v3, v0, Lcom/google/android/apps/nexuslauncher/reflection/g/d;->Eq:Lcom/google/android/apps/nexuslauncher/reflection/e/i;

    iput-wide v1, v3, Lcom/google/android/apps/nexuslauncher/reflection/e/i;->time:J

    .line 89
    iget-object v1, p0, Lcom/google/android/apps/nexuslauncher/reflection/f/b;->DJ:Landroid/location/Location;

    invoke-virtual {v1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v1

    iget-object v3, v0, Lcom/google/android/apps/nexuslauncher/reflection/g/d;->Eq:Lcom/google/android/apps/nexuslauncher/reflection/e/i;

    iput-wide v1, v3, Lcom/google/android/apps/nexuslauncher/reflection/e/i;->Cx:D

    .line 90
    iget-object v1, p0, Lcom/google/android/apps/nexuslauncher/reflection/f/b;->DJ:Landroid/location/Location;

    invoke-virtual {v1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v1

    iget-object v3, v0, Lcom/google/android/apps/nexuslauncher/reflection/g/d;->Eq:Lcom/google/android/apps/nexuslauncher/reflection/e/i;

    iput-wide v1, v3, Lcom/google/android/apps/nexuslauncher/reflection/e/i;->Cy:D

    .line 96
    new-instance v1, Lcom/google/android/apps/nexuslauncher/reflection/g/c;

    invoke-direct {v1}, Lcom/google/android/apps/nexuslauncher/reflection/g/c;-><init>()V

    .line 97
    new-instance v2, Lcom/google/android/apps/nexuslauncher/reflection/g/e;

    invoke-direct {v2}, Lcom/google/android/apps/nexuslauncher/reflection/g/e;-><init>()V

    invoke-virtual {v2, v0}, Lcom/google/android/apps/nexuslauncher/reflection/g/e;->a(Lcom/google/research/reflection/signal/a;)Lcom/google/research/reflection/signal/b;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/google/android/apps/nexuslauncher/reflection/g/c;->a(Lcom/google/research/reflection/signal/b;)Lcom/google/research/reflection/signal/ReflectionEvent;

    .line 98
    const-string v0, "LatLngSensor"

    invoke-virtual {v1, v0}, Lcom/google/android/apps/nexuslauncher/reflection/g/c;->q(Ljava/lang/String;)Lcom/google/android/apps/nexuslauncher/reflection/g/c;

    .line 99
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/reflection/f/b;->DI:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/research/reflection/c/c;

    invoke-virtual {v1}, Lcom/google/android/apps/nexuslauncher/reflection/g/c;->ez()Lcom/google/android/apps/nexuslauncher/reflection/g/c;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/google/research/reflection/c/c;->a(Lcom/google/research/reflection/signal/ReflectionEvent;)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 109
    :cond_1
    return-void

    .line 105
    :catch_0
    move-exception v0

    .line 110
    return-void
.end method
