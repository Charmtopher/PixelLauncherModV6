.class final synthetic Lcom/google/android/apps/miphone/aiai/matchmaker/ui/X;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final wE:Lcom/google/android/apps/miphone/aiai/matchmaker/ui/U;

.field private final wF:I

.field private final wq:I


# direct methods
.method constructor <init>(Lcom/google/android/apps/miphone/aiai/matchmaker/ui/U;II)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/ui/X;->wE:Lcom/google/android/apps/miphone/aiai/matchmaker/ui/U;

    iput p2, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/ui/X;->wq:I

    iput p3, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/ui/X;->wF:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    iget-object v0, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/ui/X;->wE:Lcom/google/android/apps/miphone/aiai/matchmaker/ui/U;

    iget v1, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/ui/X;->wq:I

    iget v2, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/ui/X;->wF:I

    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    const-string v4, "ACTION_ARGUMENT_SELECTION_START_INT"

    invoke-virtual {v3, v4, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v1, "ACTION_ARGUMENT_SELECTION_END_INT"

    invoke-virtual {v3, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iget-object v0, v0, Lcom/google/android/apps/miphone/aiai/matchmaker/ui/U;->wv:Landroid/widget/TextView;

    const/high16 v1, 0x20000

    invoke-virtual {v0, v1, v3}, Landroid/widget/TextView;->performAccessibilityAction(ILandroid/os/Bundle;)Z

    return-void
.end method
