.class Lcom/google/android/apps/nexuslauncher/allapps/k;
.super Landroid/util/IntProperty;
.source "SourceFile"


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 65
    invoke-direct {p0, p1}, Landroid/util/IntProperty;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public synthetic get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 65
    check-cast p1, Lcom/google/android/apps/nexuslauncher/allapps/PredictionRowView;

    invoke-static {p1}, Lcom/google/android/apps/nexuslauncher/allapps/PredictionRowView;->a(Lcom/google/android/apps/nexuslauncher/allapps/PredictionRowView;)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method public synthetic setValue(Ljava/lang/Object;I)V
    .locals 0

    .line 65
    check-cast p1, Lcom/google/android/apps/nexuslauncher/allapps/PredictionRowView;

    invoke-virtual {p1, p2}, Lcom/google/android/apps/nexuslauncher/allapps/PredictionRowView;->setTextAlpha(I)V

    return-void
.end method
