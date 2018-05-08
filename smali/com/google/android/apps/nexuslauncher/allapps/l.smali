.class Lcom/google/android/apps/nexuslauncher/allapps/l;
.super Landroid/util/FloatProperty;
.source "SourceFile"


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 28
    invoke-direct {p0, p1}, Landroid/util/FloatProperty;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public synthetic get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 28
    check-cast p1, Lcom/google/android/apps/nexuslauncher/allapps/PredictionsFloatingHeader;

    invoke-static {p1}, Lcom/google/android/apps/nexuslauncher/allapps/PredictionsFloatingHeader;->a(Lcom/google/android/apps/nexuslauncher/allapps/PredictionsFloatingHeader;)F

    move-result p1

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    return-object p1
.end method

.method public synthetic setValue(Ljava/lang/Object;F)V
    .locals 0

    .line 28
    check-cast p1, Lcom/google/android/apps/nexuslauncher/allapps/PredictionsFloatingHeader;

    invoke-static {p1, p2}, Lcom/google/android/apps/nexuslauncher/allapps/PredictionsFloatingHeader;->a(Lcom/google/android/apps/nexuslauncher/allapps/PredictionsFloatingHeader;F)V

    return-void
.end method
