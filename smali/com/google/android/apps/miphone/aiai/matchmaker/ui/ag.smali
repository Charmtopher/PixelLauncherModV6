.class Lcom/google/android/apps/miphone/aiai/matchmaker/ui/ag;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/textclassifier/TextClassifier;


# instance fields
.field final synthetic wJ:Lcom/google/android/apps/miphone/aiai/matchmaker/ui/U;


# direct methods
.method constructor <init>(Lcom/google/android/apps/miphone/aiai/matchmaker/ui/U;)V
    .locals 0

    .line 253
    iput-object p1, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/ui/ag;->wJ:Lcom/google/android/apps/miphone/aiai/matchmaker/ui/U;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public classifyText(Ljava/lang/CharSequence;IILandroid/os/LocaleList;)Landroid/view/textclassifier/TextClassification;
    .locals 0

    .line 269
    iget-object p4, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/ui/ag;->wJ:Lcom/google/android/apps/miphone/aiai/matchmaker/ui/U;

    invoke-virtual {p4, p1, p2, p3}, Lcom/google/android/apps/miphone/aiai/matchmaker/ui/U;->a(Ljava/lang/CharSequence;II)Landroid/view/textclassifier/TextClassification;

    move-result-object p1

    return-object p1
.end method

.method public suggestSelection(Ljava/lang/CharSequence;IILandroid/os/LocaleList;)Landroid/view/textclassifier/TextSelection;
    .locals 0

    .line 260
    iget-object p4, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/ui/ag;->wJ:Lcom/google/android/apps/miphone/aiai/matchmaker/ui/U;

    invoke-virtual {p4, p1, p2, p3}, Lcom/google/android/apps/miphone/aiai/matchmaker/ui/U;->b(Ljava/lang/CharSequence;II)Landroid/view/textclassifier/TextSelection;

    move-result-object p1

    return-object p1
.end method
