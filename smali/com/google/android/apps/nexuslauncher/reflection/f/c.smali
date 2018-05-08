.class Lcom/google/android/apps/nexuslauncher/reflection/f/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/tasks/a;


# instance fields
.field final synthetic DK:Lcom/google/android/apps/nexuslauncher/reflection/f/b;


# direct methods
.method constructor <init>(Lcom/google/android/apps/nexuslauncher/reflection/f/b;)V
    .locals 0

    .line 58
    iput-object p1, p0, Lcom/google/android/apps/nexuslauncher/reflection/f/c;->DK:Lcom/google/android/apps/nexuslauncher/reflection/f/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/google/android/gms/tasks/b;)V
    .locals 1

    .line 61
    invoke-virtual {p1}, Lcom/google/android/gms/tasks/b;->id()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/google/android/gms/tasks/b;->getResult()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 62
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/reflection/f/c;->DK:Lcom/google/android/apps/nexuslauncher/reflection/f/b;

    invoke-virtual {p1}, Lcom/google/android/gms/tasks/b;->getResult()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/location/Location;

    iput-object p1, v0, Lcom/google/android/apps/nexuslauncher/reflection/f/b;->DJ:Landroid/location/Location;

    return-void

    .line 67
    :cond_0
    iget-object p1, p0, Lcom/google/android/apps/nexuslauncher/reflection/f/c;->DK:Lcom/google/android/apps/nexuslauncher/reflection/f/b;

    const/4 v0, 0x0

    iput-object v0, p1, Lcom/google/android/apps/nexuslauncher/reflection/f/b;->DJ:Landroid/location/Location;

    .line 69
    return-void
.end method
