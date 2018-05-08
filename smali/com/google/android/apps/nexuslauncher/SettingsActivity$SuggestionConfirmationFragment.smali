.class public Lcom/google/android/apps/nexuslauncher/SettingsActivity$SuggestionConfirmationFragment;
.super Landroid/app/DialogFragment;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 174
    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    .line 189
    invoke-virtual {p0}, Lcom/google/android/apps/nexuslauncher/SettingsActivity$SuggestionConfirmationFragment;->getTargetFragment()Landroid/app/Fragment;

    move-result-object p1

    instance-of p1, p1, Landroid/preference/PreferenceFragment;

    const/4 p2, 0x0

    if-eqz p1, :cond_0

    .line 190
    invoke-virtual {p0}, Lcom/google/android/apps/nexuslauncher/SettingsActivity$SuggestionConfirmationFragment;->getTargetFragment()Landroid/app/Fragment;

    move-result-object p1

    check-cast p1, Landroid/preference/PreferenceFragment;

    const-string v0, "pref_show_predictions"

    .line 191
    invoke-virtual {p1, v0}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object p1

    .line 192
    instance-of v0, p1, Landroid/preference/TwoStatePreference;

    if-eqz v0, :cond_0

    .line 193
    check-cast p1, Landroid/preference/TwoStatePreference;

    invoke-virtual {p1, p2}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    .line 196
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/apps/nexuslauncher/SettingsActivity$SuggestionConfirmationFragment;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/apps/nexuslauncher/reflection/g;->k(Landroid/content/Context;)Lcom/google/android/apps/nexuslauncher/reflection/g;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/google/android/apps/nexuslauncher/reflection/g;->setEnabled(Z)V

    .line 197
    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 2

    .line 179
    new-instance p1, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/google/android/apps/nexuslauncher/SettingsActivity$SuggestionConfirmationFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 180
    const v0, 0x7f0c00a6

    invoke-virtual {p1, v0}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    .line 181
    const v0, 0x7f0c00a7

    invoke-virtual {p1, v0}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    .line 182
    const/high16 v0, 0x1040000

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    .line 183
    const v0, 0x7f0c00a8

    invoke-virtual {p1, v0, p0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    .line 184
    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p1

    .line 179
    return-object p1
.end method
