.class Lcom/google/android/apps/miphone/aiai/matchmaker/ui/g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/MenuItem$OnActionExpandListener;


# instance fields
.field final synthetic uK:Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/y;

.field final synthetic uL:Lcom/google/android/apps/miphone/aiai/matchmaker/ui/f;


# direct methods
.method constructor <init>(Lcom/google/android/apps/miphone/aiai/matchmaker/ui/f;Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/y;)V
    .locals 0

    .line 183
    iput-object p1, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/ui/g;->uL:Lcom/google/android/apps/miphone/aiai/matchmaker/ui/f;

    iput-object p2, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/ui/g;->uK:Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/y;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMenuItemActionCollapse(Landroid/view/MenuItem;)Z
    .locals 0

    .line 193
    const/4 p1, 0x1

    return p1
.end method

.method public onMenuItemActionExpand(Landroid/view/MenuItem;)Z
    .locals 2

    .line 186
    iget-object p1, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/ui/g;->uL:Lcom/google/android/apps/miphone/aiai/matchmaker/ui/f;

    iget-object p1, p1, Lcom/google/android/apps/miphone/aiai/matchmaker/ui/f;->uG:Lcom/google/android/apps/miphone/aiai/matchmaker/ui/h;

    iget-object v0, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/ui/g;->uK:Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/y;

    .line 187
    invoke-static {v0}, Lcom/google/android/apps/miphone/aiai/matchmaker/ui/ai;->s(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/y;

    iget-object v0, v0, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/y;->tg:Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/x;

    iget-object v1, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/ui/g;->uL:Lcom/google/android/apps/miphone/aiai/matchmaker/ui/f;

    iget-object v1, v1, Lcom/google/android/apps/miphone/aiai/matchmaker/ui/f;->uI:Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/D;

    invoke-static {v1}, Lcom/google/android/apps/miphone/aiai/matchmaker/ui/ai;->s(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/D;

    .line 186
    invoke-interface {p1, v0, v1}, Lcom/google/android/apps/miphone/aiai/matchmaker/ui/h;->a(Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/x;Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/D;)V

    .line 188
    const/4 p1, 0x1

    return p1
.end method
